
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
struct TYPE_7__ {scalar_t__ httpproxy; } ;
struct TYPE_6__ {scalar_t__ proxytype; } ;
struct connectdata {struct Curl_easy* data; TYPE_2__ bits; int * sock; TYPE_1__ socks_proxy; } ;
struct Curl_easy {int dummy; } ;
struct Curl_dns_entry {TYPE_4__* addr; } ;
typedef int ssize_t ;
typedef int socksreq ;
typedef int curl_socket_t ;
typedef int buf ;
struct TYPE_9__ {scalar_t__ ai_family; scalar_t__ ai_addr; } ;
typedef TYPE_4__ Curl_addrinfo ;
typedef int CURLcode ;


 scalar_t__ AF_INET ;
 int CURLE_COULDNT_CONNECT ;
 int CURLE_COULDNT_RESOLVE_HOST ;
 int CURLE_COULDNT_RESOLVE_PROXY ;
 int CURLE_OK ;
 int CURLE_OPERATION_TIMEDOUT ;
 scalar_t__ CURLPROXY_SOCKS4A ;
 int CURLRESOLV_ERROR ;
 int CURLRESOLV_PENDING ;
 int Curl_blockread_all (struct connectdata*,int ,char*,int,int*) ;
 int Curl_printable_address (TYPE_4__*,char*,int) ;
 int Curl_resolv (struct connectdata*,char const*,int,int,struct Curl_dns_entry**) ;
 int Curl_resolv_unlock (struct Curl_easy*,struct Curl_dns_entry*) ;
 int Curl_resolver_wait_resolv (struct connectdata*,struct Curl_dns_entry**) ;
 scalar_t__ Curl_timeleft (struct Curl_easy*,int *,int) ;
 int Curl_write_plain (struct connectdata*,int ,char*,int,int*) ;
 int FALSE ;
 int SOCKS4REQLEN ;
 int TRUE ;
 int curlx_nonblock (int ,int) ;
 int failf (struct Curl_easy*,char*,...) ;
 int infof (struct Curl_easy*,char*,char const*,...) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 int strcpy (char*,char const*) ;
 void* strlen (char const*) ;

CURLcode Curl_SOCKS4(const char *proxy_user,
                     const char *hostname,
                     int remote_port,
                     int sockindex,
                     struct connectdata *conn)
{
  const bool protocol4a =
    (conn->socks_proxy.proxytype == CURLPROXY_SOCKS4A) ? TRUE : FALSE;

  unsigned char socksreq[262];

  CURLcode code;
  curl_socket_t sock = conn->sock[sockindex];
  struct Curl_easy *data = conn->data;

  if(Curl_timeleft(data, ((void*)0), TRUE) < 0) {

    failf(data, "Connection time-out");
    return CURLE_OPERATION_TIMEDOUT;
  }

  if(conn->bits.httpproxy)
    infof(conn->data, "SOCKS4%s: connecting to HTTP proxy %s port %d\n",
          protocol4a ? "a" : "", hostname, remote_port);

  (void)curlx_nonblock(sock, FALSE);

  infof(data, "SOCKS4 communication to %s:%d\n", hostname, remote_port);
  socksreq[0] = 4;
  socksreq[1] = 1;
  socksreq[2] = (unsigned char)((remote_port >> 8) & 0xff);
  socksreq[3] = (unsigned char)(remote_port & 0xff);


  if(!protocol4a) {
    struct Curl_dns_entry *dns;
    Curl_addrinfo *hp = ((void*)0);
    int rc;

    rc = Curl_resolv(conn, hostname, remote_port, FALSE, &dns);

    if(rc == CURLRESOLV_ERROR)
      return CURLE_COULDNT_RESOLVE_PROXY;

    if(rc == CURLRESOLV_PENDING)

      (void)Curl_resolver_wait_resolv(conn, &dns);





    if(dns)
      hp = dns->addr;
    if(hp) {
      char buf[64];
      Curl_printable_address(hp, buf, sizeof(buf));

      if(hp->ai_family == AF_INET) {
        struct sockaddr_in *saddr_in;

        saddr_in = (struct sockaddr_in *)(void *)hp->ai_addr;
        socksreq[4] = ((unsigned char *)&saddr_in->sin_addr.s_addr)[0];
        socksreq[5] = ((unsigned char *)&saddr_in->sin_addr.s_addr)[1];
        socksreq[6] = ((unsigned char *)&saddr_in->sin_addr.s_addr)[2];
        socksreq[7] = ((unsigned char *)&saddr_in->sin_addr.s_addr)[3];

        infof(data, "SOCKS4 connect to IPv4 %s (locally resolved)\n", buf);
      }
      else {
        hp = ((void*)0);

        failf(data, "SOCKS4 connection to %s not supported\n", buf);
      }

      Curl_resolv_unlock(data, dns);
    }
    if(!hp) {
      failf(data, "Failed to resolve \"%s\" for SOCKS4 connect.",
            hostname);
      return CURLE_COULDNT_RESOLVE_HOST;
    }
  }




  socksreq[8] = 0;
  if(proxy_user) {
    size_t plen = strlen(proxy_user);
    if(plen >= sizeof(socksreq) - 8) {
      failf(data, "Too long SOCKS proxy name, can't use!\n");
      return CURLE_COULDNT_CONNECT;
    }

    memcpy(socksreq + 8, proxy_user, plen + 1);
  }




  {
    int result;
    ssize_t actualread;
    ssize_t written;
    ssize_t hostnamelen = 0;
    ssize_t packetsize = 9 +
      strlen((char *)socksreq + 8);


    if(protocol4a) {
      socksreq[4] = 0;
      socksreq[5] = 0;
      socksreq[6] = 0;
      socksreq[7] = 1;

      hostnamelen = (ssize_t)strlen(hostname) + 1;
      if(packetsize + hostnamelen <= 262)
        strcpy((char *)socksreq + packetsize, hostname);
      else
        hostnamelen = 0;
    }


    code = Curl_write_plain(conn, sock, (char *)socksreq,
                            packetsize + hostnamelen,
                            &written);
    if(code || (written != packetsize + hostnamelen)) {
      failf(data, "Failed to send SOCKS4 connect request.");
      return CURLE_COULDNT_CONNECT;
    }
    if(protocol4a && hostnamelen == 0) {

      hostnamelen = (ssize_t)strlen(hostname) + 1;
      code = Curl_write_plain(conn, sock, (char *)hostname, hostnamelen,
                              &written);
      if(code || (written != hostnamelen)) {
        failf(data, "Failed to send SOCKS4 connect request.");
        return CURLE_COULDNT_CONNECT;
      }
    }

    packetsize = 8;


    result = Curl_blockread_all(conn, sock, (char *)socksreq, packetsize,
                                &actualread);
    if(result || (actualread != packetsize)) {
      failf(data, "Failed to receive SOCKS4 connect request ack.");
      return CURLE_COULDNT_CONNECT;
    }
    if(socksreq[0] != 0) {
      failf(data,
            "SOCKS4 reply has wrong version, version should be 0.");
      return CURLE_COULDNT_CONNECT;
    }


    switch(socksreq[1]) {
    case 90:
      infof(data, "SOCKS4%s request granted.\n", protocol4a?"a":"");
      break;
    case 91:
      failf(data,
            "Can't complete SOCKS4 connection to %d.%d.%d.%d:%d. (%d)"
            ", request rejected or failed.",
            (unsigned char)socksreq[4], (unsigned char)socksreq[5],
            (unsigned char)socksreq[6], (unsigned char)socksreq[7],
            (((unsigned char)socksreq[2] << 8) | (unsigned char)socksreq[3]),
            (unsigned char)socksreq[1]);
      return CURLE_COULDNT_CONNECT;
    case 92:
      failf(data,
            "Can't complete SOCKS4 connection to %d.%d.%d.%d:%d. (%d)"
            ", request rejected because SOCKS server cannot connect to "
            "identd on the client.",
            (unsigned char)socksreq[4], (unsigned char)socksreq[5],
            (unsigned char)socksreq[6], (unsigned char)socksreq[7],
            (((unsigned char)socksreq[2] << 8) | (unsigned char)socksreq[3]),
            (unsigned char)socksreq[1]);
      return CURLE_COULDNT_CONNECT;
    case 93:
      failf(data,
            "Can't complete SOCKS4 connection to %d.%d.%d.%d:%d. (%d)"
            ", request rejected because the client program and identd "
            "report different user-ids.",
            (unsigned char)socksreq[4], (unsigned char)socksreq[5],
            (unsigned char)socksreq[6], (unsigned char)socksreq[7],
            (((unsigned char)socksreq[2] << 8) | (unsigned char)socksreq[3]),
            (unsigned char)socksreq[1]);
      return CURLE_COULDNT_CONNECT;
    default:
      failf(data,
            "Can't complete SOCKS4 connection to %d.%d.%d.%d:%d. (%d)"
            ", Unknown.",
            (unsigned char)socksreq[4], (unsigned char)socksreq[5],
            (unsigned char)socksreq[6], (unsigned char)socksreq[7],
            (((unsigned char)socksreq[2] << 8) | (unsigned char)socksreq[3]),
            (unsigned char)socksreq[1]);
      return CURLE_COULDNT_CONNECT;
    }
  }

  (void)curlx_nonblock(sock, TRUE);

  return CURLE_OK;
}

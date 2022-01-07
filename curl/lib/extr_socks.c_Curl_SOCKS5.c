
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ timediff_t ;
struct TYPE_9__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_12__ {scalar_t__ httpproxy; } ;
struct TYPE_10__ {scalar_t__ proxytype; } ;
struct connectdata {scalar_t__ socks5_gssapi_enctype; struct Curl_easy* data; TYPE_5__ bits; TYPE_3__ socks_proxy; int * sock; } ;
struct TYPE_11__ {unsigned long socks5auth; } ;
struct Curl_easy {TYPE_4__ set; } ;
struct Curl_dns_entry {TYPE_6__* addr; } ;
typedef int ssize_t ;
typedef int dest ;
typedef int curl_socket_t ;
struct TYPE_13__ {scalar_t__ ai_family; scalar_t__ ai_addr; } ;
typedef TYPE_6__ Curl_addrinfo ;
typedef scalar_t__ CURLcode ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 unsigned long const CURLAUTH_BASIC ;
 unsigned long const CURLAUTH_GSSAPI ;
 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ;
 scalar_t__ CURLE_COULDNT_CONNECT ;
 scalar_t__ CURLE_COULDNT_RESOLVE_HOST ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OPERATION_TIMEDOUT ;
 scalar_t__ CURLE_RECV_ERROR ;
 scalar_t__ CURLPROXY_SOCKS5 ;
 int CURLRESOLV_ERROR ;
 int CURLRESOLV_PENDING ;
 int CURL_CSELECT_ERR ;
 scalar_t__ Curl_SOCKS5_gssapi_negotiate (int,struct connectdata*) ;
 int Curl_blockread_all (struct connectdata*,int ,char*,int,int*) ;
 scalar_t__ Curl_printable_address (TYPE_6__*,char*,int) ;
 int Curl_resolv (struct connectdata*,char const*,int,int,struct Curl_dns_entry**) ;
 int Curl_resolv_unlock (struct Curl_easy*,struct Curl_dns_entry*) ;
 scalar_t__ Curl_resolver_wait_resolv (struct connectdata*,struct Curl_dns_entry**) ;
 scalar_t__ Curl_timeleft (struct Curl_easy*,int *,int) ;
 scalar_t__ Curl_write_plain (struct connectdata*,int ,char*,int,int*) ;
 int FALSE ;
 int REQUEST_BUFSIZE ;
 int SOCKET_READABLE (int ,scalar_t__) ;
 int SOCKET_WRITABLE (int ,scalar_t__) ;
 int TRUE ;
 int curlx_nonblock (int ,int) ;
 int failf (struct Curl_easy*,char*,...) ;
 int infof (struct Curl_easy*,char*,...) ;
 int memcpy (unsigned char*,char const*,size_t const) ;
 int msnprintf (char*,int,char*,...) ;
 int strcpy (char*,char*) ;
 void* strlen (char const*) ;

CURLcode Curl_SOCKS5(const char *proxy_user,
                     const char *proxy_password,
                     const char *hostname,
                     int remote_port,
                     int sockindex,
                     struct connectdata *conn)
{
  unsigned char socksreq[600];
  char dest[600] = "unknown";
  int idx;
  ssize_t actualread;
  ssize_t written;
  int result;
  CURLcode code;
  curl_socket_t sock = conn->sock[sockindex];
  struct Curl_easy *data = conn->data;
  timediff_t timeout;
  bool socks5_resolve_local =
    (conn->socks_proxy.proxytype == CURLPROXY_SOCKS5) ? TRUE : FALSE;
  const size_t hostname_len = strlen(hostname);
  ssize_t len = 0;
  const unsigned long auth = data->set.socks5auth;
  bool allow_gssapi = FALSE;

  if(conn->bits.httpproxy)
    infof(conn->data, "SOCKS5: connecting to HTTP proxy %s port %d\n",
          hostname, remote_port);


  if(!socks5_resolve_local && hostname_len > 255) {
    infof(conn->data, "SOCKS5: server resolving disabled for hostnames of "
          "length > 255 [actual len=%zu]\n", hostname_len);
    socks5_resolve_local = TRUE;
  }


  timeout = Curl_timeleft(data, ((void*)0), TRUE);

  if(timeout < 0) {

    failf(data, "Connection time-out");
    return CURLE_OPERATION_TIMEDOUT;
  }

  (void)curlx_nonblock(sock, TRUE);


  result = SOCKET_WRITABLE(sock, timeout);

  if(-1 == result) {
    failf(conn->data, "SOCKS5: no connection here");
    return CURLE_COULDNT_CONNECT;
  }
  if(0 == result) {
    failf(conn->data, "SOCKS5: connection timeout");
    return CURLE_OPERATION_TIMEDOUT;
  }

  if(result & CURL_CSELECT_ERR) {
    failf(conn->data, "SOCKS5: error occurred during connection");
    return CURLE_COULDNT_CONNECT;
  }

  if(auth & ~(CURLAUTH_BASIC | CURLAUTH_GSSAPI))
    infof(conn->data,
        "warning: unsupported value passed to CURLOPT_SOCKS5_AUTH: %lu\n",
        auth);
  if(!(auth & CURLAUTH_BASIC))

    proxy_user = ((void*)0);





  idx = 0;
  socksreq[idx++] = 5;
  idx++;
  socksreq[idx++] = 0;
  if(allow_gssapi)
    socksreq[idx++] = 1;
  if(proxy_user)
    socksreq[idx++] = 2;

  socksreq[1] = (unsigned char) (idx - 2);

  (void)curlx_nonblock(sock, FALSE);

  infof(data, "SOCKS5 communication to %s:%d\n", hostname, remote_port);

  code = Curl_write_plain(conn, sock, (char *)socksreq, (2 + (int)socksreq[1]),
                          &written);
  if(code || (written != (2 + (int)socksreq[1]))) {
    failf(data, "Unable to send initial SOCKS5 request.");
    return CURLE_COULDNT_CONNECT;
  }

  (void)curlx_nonblock(sock, TRUE);

  result = SOCKET_READABLE(sock, timeout);

  if(-1 == result) {
    failf(conn->data, "SOCKS5 nothing to read");
    return CURLE_COULDNT_CONNECT;
  }
  if(0 == result) {
    failf(conn->data, "SOCKS5 read timeout");
    return CURLE_OPERATION_TIMEDOUT;
  }

  if(result & CURL_CSELECT_ERR) {
    failf(conn->data, "SOCKS5 read error occurred");
    return CURLE_RECV_ERROR;
  }

  (void)curlx_nonblock(sock, FALSE);

  result = Curl_blockread_all(conn, sock, (char *)socksreq, 2, &actualread);
  if(result || (actualread != 2)) {
    failf(data, "Unable to receive initial SOCKS5 response.");
    return CURLE_COULDNT_CONNECT;
  }

  if(socksreq[0] != 5) {
    failf(data, "Received invalid version in initial SOCKS5 response.");
    return CURLE_COULDNT_CONNECT;
  }
  if(socksreq[1] == 0) {

    ;
  }
  else if(socksreq[1] == 2) {

    size_t proxy_user_len, proxy_password_len;
    if(proxy_user && proxy_password) {
      proxy_user_len = strlen(proxy_user);
      proxy_password_len = strlen(proxy_password);
    }
    else {
      proxy_user_len = 0;
      proxy_password_len = 0;
    }
    len = 0;
    socksreq[len++] = 1;
    socksreq[len++] = (unsigned char) proxy_user_len;
    if(proxy_user && proxy_user_len) {

      if(proxy_user_len >= 255) {
        failf(data, "Excessive user name length for proxy auth");
        return CURLE_BAD_FUNCTION_ARGUMENT;
      }
      memcpy(socksreq + len, proxy_user, proxy_user_len);
    }
    len += proxy_user_len;
    socksreq[len++] = (unsigned char) proxy_password_len;
    if(proxy_password && proxy_password_len) {

      if(proxy_password_len > 255) {
        failf(data, "Excessive password length for proxy auth");
        return CURLE_BAD_FUNCTION_ARGUMENT;
      }
      memcpy(socksreq + len, proxy_password, proxy_password_len);
    }
    len += proxy_password_len;

    code = Curl_write_plain(conn, sock, (char *)socksreq, len, &written);
    if(code || (len != written)) {
      failf(data, "Failed to send SOCKS5 sub-negotiation request.");
      return CURLE_COULDNT_CONNECT;
    }

    result = Curl_blockread_all(conn, sock, (char *)socksreq, 2, &actualread);
    if(result || (actualread != 2)) {
      failf(data, "Unable to receive SOCKS5 sub-negotiation response.");
      return CURLE_COULDNT_CONNECT;
    }


    if(socksreq[1] != 0) {
      failf(data, "User was rejected by the SOCKS5 server (%d %d).",
            socksreq[0], socksreq[1]);
      return CURLE_COULDNT_CONNECT;
    }


  }
  else {

    if(!allow_gssapi && (socksreq[1] == 1)) {
      failf(data,
            "SOCKS5 GSSAPI per-message authentication is not supported.");
      return CURLE_COULDNT_CONNECT;
    }
    if(socksreq[1] == 255) {
      if(!proxy_user || !*proxy_user) {
        failf(data,
              "No authentication method was acceptable. (It is quite likely"
              " that the SOCKS5 server wanted a username/password, since none"
              " was supplied to the server on this connection.)");
      }
      else {
        failf(data, "No authentication method was acceptable.");
      }
      return CURLE_COULDNT_CONNECT;
    }
    else {
      failf(data,
            "Undocumented SOCKS5 mode attempted to be used by server.");
      return CURLE_COULDNT_CONNECT;
    }
  }


  len = 0;
  socksreq[len++] = 5;
  socksreq[len++] = 1;
  socksreq[len++] = 0;

  if(!socks5_resolve_local) {
    socksreq[len++] = 3;
    socksreq[len++] = (char) hostname_len;
    memcpy(&socksreq[len], hostname, hostname_len);
    len += hostname_len;
    msnprintf(dest, sizeof(dest), "%s:%d", hostname, remote_port);
    infof(data, "SOCKS5 connect to %s (remotely resolved)\n", dest);
  }
  else {
    struct Curl_dns_entry *dns;
    Curl_addrinfo *hp = ((void*)0);
    int rc = Curl_resolv(conn, hostname, remote_port, FALSE, &dns);

    if(rc == CURLRESOLV_ERROR)
      return CURLE_COULDNT_RESOLVE_HOST;

    if(rc == CURLRESOLV_PENDING) {

      code = Curl_resolver_wait_resolv(conn, &dns);
      if(code)
        return code;
    }





    if(dns)
      hp = dns->addr;
    if(hp) {
      if(Curl_printable_address(hp, dest, sizeof(dest))) {
        size_t destlen = strlen(dest);
        msnprintf(dest + destlen, sizeof(dest) - destlen, ":%d", remote_port);
      }
      else {
        strcpy(dest, "unknown");
      }

      if(hp->ai_family == AF_INET) {
        int i;
        struct sockaddr_in *saddr_in;
        socksreq[len++] = 1;

        saddr_in = (struct sockaddr_in *)(void *)hp->ai_addr;
        for(i = 0; i < 4; i++) {
          socksreq[len++] = ((unsigned char *)&saddr_in->sin_addr.s_addr)[i];
        }

        infof(data, "SOCKS5 connect to IPv4 %s (locally resolved)\n", dest);
      }
      else {
        hp = ((void*)0);

        failf(data, "SOCKS5 connection to %s not supported\n", dest);
      }

      Curl_resolv_unlock(data, dns);
    }
    if(!hp) {
      failf(data, "Failed to resolve \"%s\" for SOCKS5 connect.",
            hostname);
      return CURLE_COULDNT_RESOLVE_HOST;
    }
  }

  socksreq[len++] = (unsigned char)((remote_port >> 8) & 0xff);
  socksreq[len++] = (unsigned char)(remote_port & 0xff);







    code = Curl_write_plain(conn, sock, (char *)socksreq, len, &written);

  if(code || (len != written)) {
    failf(data, "Failed to send SOCKS5 connect request.");
    return CURLE_COULDNT_CONNECT;
  }

  len = 10;







    result = Curl_blockread_all(conn, sock, (char *)socksreq,
                                len, &actualread);

  if(result || (len != actualread)) {
    failf(data, "Failed to receive SOCKS5 connect request ack.");
    return CURLE_COULDNT_CONNECT;
  }

  if(socksreq[0] != 5) {
    failf(data,
          "SOCKS5 reply has wrong version, version should be 5.");
    return CURLE_COULDNT_CONNECT;
  }
  if(socksreq[3] == 3) {

    int addrlen = (int) socksreq[4];
    len = 5 + addrlen + 2;
  }
  else if(socksreq[3] == 4) {

    len = 4 + 16 + 2;
  }






    if(len > 10) {
      result = Curl_blockread_all(conn, sock, (char *)&socksreq[10],
                                  len - 10, &actualread);
      if(result || ((len - 10) != actualread)) {
        failf(data, "Failed to receive SOCKS5 connect request ack.");
        return CURLE_COULDNT_CONNECT;
      }
    }




  if(socksreq[1] != 0) {
    failf(data, "Can't complete SOCKS5 connection to %s. (%d)",
          dest, (unsigned char)socksreq[1]);
    return CURLE_COULDNT_CONNECT;
  }
  infof(data, "SOCKS5 request granted.\n");

  (void)curlx_nonblock(sock, TRUE);
  return CURLE_OK;
}

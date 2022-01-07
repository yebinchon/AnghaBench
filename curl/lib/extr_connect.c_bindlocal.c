
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_family; void* sin6_port; int sin6_scope_id; int sin6_addr; } ;
struct sockaddr_in {int sin_family; void* sin_port; int sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_7__ {void* bound; } ;
struct connectdata {long ip_version; TYPE_3__ bits; int scope_id; struct Curl_easy* data; } ;
struct Curl_sockaddr_storage {int dummy; } ;
struct TYPE_6__ {int os_errno; void* errorbuf; } ;
struct TYPE_5__ {unsigned short localport; int localportrange; char** str; } ;
struct Curl_easy {TYPE_2__ state; TYPE_1__ set; } ;
struct Curl_dns_entry {TYPE_4__* addr; } ;
typedef int myhost ;
typedef int curl_socklen_t ;
typedef int curl_socket_t ;
typedef int buffer ;
typedef int add ;
struct TYPE_8__ {int ai_family; } ;
typedef int CURLcode ;


 int AF_INET ;
 int AF_INET6 ;
 int CURLE_INTERFACE_FAILED ;
 int CURLE_OK ;
 int CURLE_UNSUPPORTED_PROTOCOL ;
 int CURLRESOLV_PENDING ;
 long CURL_IPRESOLVE_V4 ;
 long CURL_IPRESOLVE_V6 ;
 int Curl_if2ip (int,unsigned int,int ,char const*,char*,int) ;
 scalar_t__ Curl_inet_pton (int,char*,int *) ;
 int Curl_printable_address (TYPE_4__*,char*,int) ;
 int Curl_resolv (struct connectdata*,char const*,int ,void*,struct Curl_dns_entry**) ;
 int Curl_resolv_unlock (struct Curl_easy*,struct Curl_dns_entry*) ;
 int Curl_resolver_wait_resolv (struct connectdata*,struct Curl_dns_entry**) ;
 int Curl_strerror (int,char*,int) ;
 void* FALSE ;



 int SOCKERRNO ;
 int SOL_SOCKET ;
 int SO_BINDTODEVICE ;
 int STRERROR_LEN ;
 size_t STRING_DEVICE ;
 void* TRUE ;
 int atoi (char*) ;
 scalar_t__ bind (int ,struct sockaddr*,int) ;
 int failf (struct Curl_easy*,char*,...) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 void* htons (unsigned short) ;
 int infof (struct Curl_easy*,char*,...) ;
 int memset (struct Curl_sockaddr_storage*,int ,int) ;
 void* ntohs (unsigned short) ;
 scalar_t__ setsockopt (int ,int ,int ,char const*,int) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static CURLcode bindlocal(struct connectdata *conn,
                          curl_socket_t sockfd, int af, unsigned int scope)
{
  struct Curl_easy *data = conn->data;

  struct Curl_sockaddr_storage sa;
  struct sockaddr *sock = (struct sockaddr *)&sa;
  curl_socklen_t sizeof_sa = 0;
  struct sockaddr_in *si4 = (struct sockaddr_in *)&sa;




  struct Curl_dns_entry *h = ((void*)0);
  unsigned short port = data->set.localport;


  int portnum = data->set.localportrange;
  const char *dev = data->set.str[STRING_DEVICE];
  int error;




  if(!dev && !port)

    return CURLE_OK;

  memset(&sa, 0, sizeof(struct Curl_sockaddr_storage));

  if(dev && (strlen(dev)<255) ) {
    char myhost[256] = "";
    int done = 0;
    bool is_interface = FALSE;
    bool is_host = FALSE;
    static const char *if_prefix = "if!";
    static const char *host_prefix = "host!";

    if(strncmp(if_prefix, dev, strlen(if_prefix)) == 0) {
      dev += strlen(if_prefix);
      is_interface = TRUE;
    }
    else if(strncmp(host_prefix, dev, strlen(host_prefix)) == 0) {
      dev += strlen(host_prefix);
      is_host = TRUE;
    }


    if(!is_host) {
      switch(Curl_if2ip(af, scope, conn->scope_id, dev,
                        myhost, sizeof(myhost))) {
        case 128:
          if(is_interface) {

            failf(data, "Couldn't bind to interface '%s'", dev);
            return CURLE_INTERFACE_FAILED;
          }
          break;
        case 130:

          return CURLE_UNSUPPORTED_PROTOCOL;
        case 129:
          is_interface = TRUE;



          infof(data, "Local Interface %s is ip %s using address family %i\n",
                dev, myhost, af);
          done = 1;
          break;
      }
    }
    if(!is_interface) {
      long ipver = conn->ip_version;
      int rc;

      if(af == AF_INET)
        conn->ip_version = CURL_IPRESOLVE_V4;





      rc = Curl_resolv(conn, dev, 0, FALSE, &h);
      if(rc == CURLRESOLV_PENDING)
        (void)Curl_resolver_wait_resolv(conn, &h);
      conn->ip_version = ipver;

      if(h) {

        Curl_printable_address(h->addr, myhost, sizeof(myhost));
        infof(data, "Name '%s' family %i resolved to '%s' family %i\n",
              dev, af, myhost, h->addr->ai_family);
        Curl_resolv_unlock(data, h);
        if(af != h->addr->ai_family) {


          return CURLE_UNSUPPORTED_PROTOCOL;
        }
        done = 1;
      }
      else {




        done = -1;
      }
    }

    if(done > 0) {
      if((af == AF_INET) &&
         (Curl_inet_pton(AF_INET, myhost, &si4->sin_addr) > 0)) {
        si4->sin_family = AF_INET;
        si4->sin_port = htons(port);
        sizeof_sa = sizeof(struct sockaddr_in);
      }
    }

    if(done < 1) {



      data->state.errorbuf = FALSE;
      failf(data, "Couldn't bind to '%s'", dev);
      return CURLE_INTERFACE_FAILED;
    }
  }
  else {
    if(af == AF_INET) {
      si4->sin_family = AF_INET;
      si4->sin_port = htons(port);
      sizeof_sa = sizeof(struct sockaddr_in);
    }
  }

  for(;;) {
    if(bind(sockfd, sock, sizeof_sa) >= 0) {

      struct Curl_sockaddr_storage add;
      curl_socklen_t size = sizeof(add);
      memset(&add, 0, sizeof(struct Curl_sockaddr_storage));
      if(getsockname(sockfd, (struct sockaddr *) &add, &size) < 0) {
        char buffer[STRERROR_LEN];
        data->state.os_errno = error = SOCKERRNO;
        failf(data, "getsockname() failed with errno %d: %s",
              error, Curl_strerror(error, buffer, sizeof(buffer)));
        return CURLE_INTERFACE_FAILED;
      }
      infof(data, "Local port: %hu\n", port);
      conn->bits.bound = TRUE;
      return CURLE_OK;
    }

    if(--portnum > 0) {
      infof(data, "Bind to local port %hu failed, trying next\n", port);
      port++;

      if(sock->sa_family == AF_INET)
        si4->sin_port = ntohs(port);




    }
    else
      break;
  }
  {
    char buffer[STRERROR_LEN];
    data->state.os_errno = error = SOCKERRNO;
    failf(data, "bind failed with errno %d: %s",
          error, Curl_strerror(error, buffer, sizeof(buffer)));
  }

  return CURLE_INTERFACE_FAILED;
}

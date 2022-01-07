
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in6 {scalar_t__ sin6_scope_id; } ;
struct curl_sockaddr {int dummy; } ;
struct connectdata {scalar_t__ transport; scalar_t__ scope_id; struct Curl_easy* data; } ;
struct Curl_sockaddr_storage {int dummy; } ;
struct Curl_sockaddr_ex {scalar_t__ family; int addrlen; int sa_addr; int protocol; int socktype; } ;
struct TYPE_4__ {scalar_t__ (* fopensocket ) (int ,int ,struct curl_sockaddr*) ;int opensocket_client; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef scalar_t__ curl_socket_t ;
struct TYPE_5__ {scalar_t__ ai_family; int ai_addrlen; int ai_addr; int ai_protocol; } ;
typedef TYPE_2__ Curl_addrinfo ;
typedef int CURLcode ;


 scalar_t__ AF_INET6 ;
 int CURLE_COULDNT_CONNECT ;
 int CURLE_OK ;
 int CURLSOCKTYPE_IPCXN ;
 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_set_in_callback (struct Curl_easy*,int) ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 scalar_t__ TRNSPRT_QUIC ;
 scalar_t__ TRNSPRT_TCP ;
 int TRUE ;
 int curlx_nonblock (scalar_t__,int ) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ socket (scalar_t__,int ,int ) ;
 scalar_t__ stub1 (int ,int ,struct curl_sockaddr*) ;

CURLcode Curl_socket(struct connectdata *conn,
                     const Curl_addrinfo *ai,
                     struct Curl_sockaddr_ex *addr,
                     curl_socket_t *sockfd)
{
  struct Curl_easy *data = conn->data;
  struct Curl_sockaddr_ex dummy;

  if(!addr)

    addr = &dummy;
  addr->family = ai->ai_family;
  addr->socktype = (conn->transport == TRNSPRT_TCP) ? SOCK_STREAM : SOCK_DGRAM;
  addr->protocol = conn->transport != TRNSPRT_TCP ? IPPROTO_UDP :
    ai->ai_protocol;
  addr->addrlen = ai->ai_addrlen;

  if(addr->addrlen > sizeof(struct Curl_sockaddr_storage))
     addr->addrlen = sizeof(struct Curl_sockaddr_storage);
  memcpy(&addr->sa_addr, ai->ai_addr, addr->addrlen);

  if(data->set.fopensocket) {
    Curl_set_in_callback(data, 1);
    *sockfd = data->set.fopensocket(data->set.opensocket_client,
                                    CURLSOCKTYPE_IPCXN,
                                    (struct curl_sockaddr *)addr);
    Curl_set_in_callback(data, 0);
  }
  else

    *sockfd = socket(addr->family, addr->socktype, addr->protocol);

  if(*sockfd == CURL_SOCKET_BAD)

    return CURLE_COULDNT_CONNECT;

  if(conn->transport == TRNSPRT_QUIC) {

    (void)curlx_nonblock(*sockfd, TRUE);
  }
  return CURLE_OK;

}

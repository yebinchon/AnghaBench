
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int do_more; } ;
struct connectdata {scalar_t__* sock; int * sock_accepted; TYPE_1__ bits; struct Curl_easy* data; } ;
struct Curl_sockaddr_storage {int dummy; } ;
struct TYPE_4__ {int (* fsockopt ) (int ,scalar_t__,int ) ;int sockopt_client; } ;
struct Curl_easy {TYPE_2__ set; } ;
typedef int curl_socklen_t ;
typedef scalar_t__ curl_socket_t ;
typedef int add ;
typedef int CURLcode ;


 int CURLE_ABORTED_BY_CALLBACK ;
 int CURLE_FTP_PORT_FAILED ;
 int CURLE_OK ;
 int CURLSOCKTYPE_ACCEPT ;
 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_closesocket (struct connectdata*,scalar_t__) ;
 int Curl_set_in_callback (struct Curl_easy*,int) ;
 int FALSE ;
 size_t SECONDARYSOCKET ;
 int TRUE ;
 scalar_t__ accept (scalar_t__,struct sockaddr*,int*) ;
 int close_secondarysocket (struct connectdata*) ;
 int curlx_nonblock (scalar_t__,int ) ;
 int failf (struct Curl_easy*,char*) ;
 scalar_t__ getsockname (scalar_t__,struct sockaddr*,int*) ;
 int infof (struct Curl_easy*,char*) ;
 int stub1 (int ,scalar_t__,int ) ;

__attribute__((used)) static CURLcode AcceptServerConnect(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;
  curl_socket_t sock = conn->sock[SECONDARYSOCKET];
  curl_socket_t s = CURL_SOCKET_BAD;



  struct sockaddr_in add;

  curl_socklen_t size = (curl_socklen_t) sizeof(add);

  if(0 == getsockname(sock, (struct sockaddr *) &add, &size)) {
    size = sizeof(add);

    s = accept(sock, (struct sockaddr *) &add, &size);
  }
  Curl_closesocket(conn, sock);

  if(CURL_SOCKET_BAD == s) {
    failf(data, "Error accept()ing server connect");
    return CURLE_FTP_PORT_FAILED;
  }
  infof(data, "Connection accepted from server\n");


  conn->bits.do_more = FALSE;

  conn->sock[SECONDARYSOCKET] = s;
  (void)curlx_nonblock(s, TRUE);
  conn->sock_accepted[SECONDARYSOCKET] = TRUE;

  if(data->set.fsockopt) {
    int error = 0;


    Curl_set_in_callback(data, 1);
    error = data->set.fsockopt(data->set.sockopt_client,
                               s,
                               CURLSOCKTYPE_ACCEPT);
    Curl_set_in_callback(data, 0);

    if(error) {
      close_secondarysocket(conn);
      return CURLE_ABORTED_BY_CALLBACK;
    }
  }

  return CURLE_OK;

}

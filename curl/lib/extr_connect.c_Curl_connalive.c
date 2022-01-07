
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {scalar_t__* sock; TYPE_1__* ssl; } ;
struct TYPE_2__ {scalar_t__ use; } ;
typedef int RECV_TYPE_ARG4 ;
typedef int RECV_TYPE_ARG3 ;
typedef int RECV_TYPE_ARG2 ;
typedef int RECV_TYPE_ARG1 ;


 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_ssl_check_cxn (struct connectdata*) ;
 size_t FIRSTSOCKET ;
 scalar_t__ MSG_PEEK ;
 scalar_t__ recv (int ,int ,int ,int ) ;

bool Curl_connalive(struct connectdata *conn)
{

  if(conn->ssl[FIRSTSOCKET].use) {

    if(!Curl_ssl_check_cxn(conn))
      return 0;
  }
  return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {scalar_t__* tempsock; TYPE_1__** tempaddr; } ;
typedef scalar_t__ curl_socket_t ;
struct TYPE_3__ {int ai_family; struct TYPE_3__* ai_next; } ;
typedef TYPE_1__ Curl_addrinfo ;
typedef scalar_t__ CURLcode ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 scalar_t__ CURLE_COULDNT_CONNECT ;
 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_closesocket (struct connectdata*,scalar_t__) ;
 int FIRSTSOCKET ;
 scalar_t__ singleipconnect (struct connectdata*,TYPE_1__*,int) ;

__attribute__((used)) static CURLcode trynextip(struct connectdata *conn,
                          int sockindex,
                          int tempindex)
{
  const int other = tempindex ^ 1;
  CURLcode result = CURLE_COULDNT_CONNECT;





  curl_socket_t fd_to_close = conn->tempsock[tempindex];
  conn->tempsock[tempindex] = CURL_SOCKET_BAD;

  if(sockindex == FIRSTSOCKET) {
    Curl_addrinfo *ai = ((void*)0);
    int family = AF_UNSPEC;

    if(conn->tempaddr[tempindex]) {

      family = conn->tempaddr[tempindex]->ai_family;
      ai = conn->tempaddr[tempindex]->ai_next;
    }
    while(ai) {
      if(conn->tempaddr[other]) {

        while(ai && ai->ai_family != family)
          ai = ai->ai_next;
      }

      if(ai) {
        result = singleipconnect(conn, ai, tempindex);
        if(result == CURLE_COULDNT_CONNECT) {
          ai = ai->ai_next;
          continue;
        }

        conn->tempaddr[tempindex] = ai;
      }
      break;
    }
  }

  if(fd_to_close != CURL_SOCKET_BAD)
    Curl_closesocket(conn, fd_to_close);

  return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {scalar_t__ sockfd; scalar_t__ writesockfd; TYPE_1__* handler; struct Curl_easy* data; } ;
struct TYPE_4__ {int keepon; } ;
struct Curl_easy {TYPE_2__ req; } ;
typedef scalar_t__ curl_socket_t ;
struct TYPE_3__ {int (* perform_getsock ) (struct connectdata const*,scalar_t__*) ;} ;


 scalar_t__ CURL_SOCKET_BAD ;
 int DEBUGASSERT (int) ;
 int GETSOCK_BLANK ;
 int GETSOCK_READSOCK (unsigned int) ;
 int GETSOCK_WRITESOCK (unsigned int) ;
 int KEEP_RECV ;
 int KEEP_RECVBITS ;
 int KEEP_SEND ;
 int KEEP_SENDBITS ;
 int stub1 (struct connectdata const*,scalar_t__*) ;

int Curl_single_getsock(const struct connectdata *conn,
                        curl_socket_t *sock)
{
  const struct Curl_easy *data = conn->data;
  int bitmap = GETSOCK_BLANK;
  unsigned sockindex = 0;

  if(conn->handler->perform_getsock)
    return conn->handler->perform_getsock(conn, sock);


  if((data->req.keepon & KEEP_RECVBITS) == KEEP_RECV) {

    DEBUGASSERT(conn->sockfd != CURL_SOCKET_BAD);

    bitmap |= GETSOCK_READSOCK(sockindex);
    sock[sockindex] = conn->sockfd;
  }


  if((data->req.keepon & KEEP_SENDBITS) == KEEP_SEND) {

    if((conn->sockfd != conn->writesockfd) ||
       bitmap == GETSOCK_BLANK) {


      if(bitmap != GETSOCK_BLANK)
        sockindex++;

      DEBUGASSERT(conn->writesockfd != CURL_SOCKET_BAD);

      sock[sockindex] = conn->writesockfd;
    }

    bitmap |= GETSOCK_WRITESOCK(sockindex);
  }

  return bitmap;
}

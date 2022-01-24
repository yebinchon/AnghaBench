#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connectdata {scalar_t__ sockfd; scalar_t__ writesockfd; TYPE_1__* handler; struct Curl_easy* data; } ;
struct TYPE_4__ {int keepon; } ;
struct Curl_easy {TYPE_2__ req; } ;
typedef  scalar_t__ curl_socket_t ;
struct TYPE_3__ {int (* perform_getsock ) (struct connectdata const*,scalar_t__*) ;} ;

/* Variables and functions */
 scalar_t__ CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GETSOCK_BLANK ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int KEEP_RECV ; 
 int KEEP_RECVBITS ; 
 int KEEP_SEND ; 
 int KEEP_SENDBITS ; 
 int FUNC3 (struct connectdata const*,scalar_t__*) ; 

int FUNC4(const struct connectdata *conn,
                        curl_socket_t *sock)
{
  const struct Curl_easy *data = conn->data;
  int bitmap = GETSOCK_BLANK;
  unsigned sockindex = 0;

  if(conn->handler->perform_getsock)
    return conn->handler->perform_getsock(conn, sock);

  /* don't include HOLD and PAUSE connections */
  if((data->req.keepon & KEEP_RECVBITS) == KEEP_RECV) {

    FUNC0(conn->sockfd != CURL_SOCKET_BAD);

    bitmap |= FUNC1(sockindex);
    sock[sockindex] = conn->sockfd;
  }

  /* don't include HOLD and PAUSE connections */
  if((data->req.keepon & KEEP_SENDBITS) == KEEP_SEND) {

    if((conn->sockfd != conn->writesockfd) ||
       bitmap == GETSOCK_BLANK) {
      /* only if they are not the same socket and we have a readable
         one, we increase index */
      if(bitmap != GETSOCK_BLANK)
        sockindex++; /* increase index if we need two entries */

      FUNC0(conn->writesockfd != CURL_SOCKET_BAD);

      sock[sockindex] = conn->writesockfd;
    }

    bitmap |= FUNC2(sockindex);
  }

  return bitmap;
}
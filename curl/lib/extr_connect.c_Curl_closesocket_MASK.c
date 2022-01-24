#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connectdata {int (* fclosesocket ) (int /*<<< orphan*/ ,scalar_t__) ;scalar_t__* sock; int /*<<< orphan*/  data; int /*<<< orphan*/  closesocket_client; scalar_t__* sock_accepted; } ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FALSE ; 
 size_t SECONDARYSOCKET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(struct connectdata *conn,
                      curl_socket_t sock)
{
  if(conn && conn->fclosesocket) {
    if((sock == conn->sock[SECONDARYSOCKET]) &&
       conn->sock_accepted[SECONDARYSOCKET])
      /* if this socket matches the second socket, and that was created with
         accept, then we MUST NOT call the callback but clear the accepted
         status */
      conn->sock_accepted[SECONDARYSOCKET] = FALSE;
    else {
      int rc;
      FUNC0(conn->data, sock);
      FUNC1(conn->data, true);
      rc = conn->fclosesocket(conn->closesocket_client, sock);
      FUNC1(conn->data, false);
      return rc;
    }
  }

  if(conn)
    /* tell the multi-socket code about this */
    FUNC0(conn->data, sock);

  FUNC2(sock);

  return 0;
}
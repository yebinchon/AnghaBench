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
struct connectdata {scalar_t__* sock; scalar_t__* tempsock; int /*<<< orphan*/  data; int /*<<< orphan*/  connection_id; } ;

/* Variables and functions */
 scalar_t__ CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct connectdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct connectdata*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FIRSTSOCKET ; 
 size_t SECONDARYSOCKET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct connectdata *conn)
{
  if(!conn)
    return;

  FUNC5(conn->data, "Closing connection %ld\n", conn->connection_id);
  FUNC4(conn->data);

  /* possible left-overs from the async name resolvers */
  FUNC2(conn);

  /* close the SSL stuff before we close any sockets since they will/may
     write to the sockets */
  FUNC3(conn, FIRSTSOCKET);
  FUNC3(conn, SECONDARYSOCKET);

  /* close possibly still open sockets */
  if(CURL_SOCKET_BAD != conn->sock[SECONDARYSOCKET])
    FUNC0(conn, conn->sock[SECONDARYSOCKET]);
  if(CURL_SOCKET_BAD != conn->sock[FIRSTSOCKET])
    FUNC0(conn, conn->sock[FIRSTSOCKET]);
  if(CURL_SOCKET_BAD != conn->tempsock[0])
    FUNC0(conn, conn->tempsock[0]);
  if(CURL_SOCKET_BAD != conn->tempsock[1])
    FUNC0(conn, conn->tempsock[1]);

  /* unlink ourselves. this should be called last since other shutdown
     procedures need a valid conn->data and this may clear it. */
  FUNC1(conn->data, conn, TRUE);
}
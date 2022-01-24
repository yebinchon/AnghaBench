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
struct netsocket {int /*<<< orphan*/ * conn; scalar_t__ lastoffset; int /*<<< orphan*/ * lastdata; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCKETS_DEBUG ; 
 struct netsocket* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  netsocket_sem ; 

s32 FUNC6(s32 s)
{
	struct netsocket *sock;

	FUNC0(SOCKETS_DEBUG, ("net_close(%d)\n", s));

	FUNC2(netsocket_sem);

	sock = FUNC3(s);
	if(!sock) {
		FUNC1(netsocket_sem);
		return -ENOTSOCK;
	}

	FUNC5(sock->conn);
	if(sock->lastdata) FUNC4(sock->lastdata);

	sock->lastdata = NULL;
	sock->lastoffset = 0;
	sock->conn = NULL;

	FUNC1(netsocket_sem);
	return 0;
}
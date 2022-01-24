#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct netconn {int dummy; } ;
typedef  size_t s32 ;
struct TYPE_2__ {int sendevt; scalar_t__ err; scalar_t__ flags; scalar_t__ rcvevt; scalar_t__ lastoffset; int /*<<< orphan*/ * lastdata; struct netconn* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t NUM_SOCKETS ; 
 int /*<<< orphan*/  netsocket_sem ; 
 TYPE_1__* sockets ; 

__attribute__((used)) static s32 FUNC2(struct netconn *conn)
{
	s32 i;

	FUNC1(netsocket_sem);

	for(i=0;i<NUM_SOCKETS;i++) {
		if(!sockets[i].conn) {
			sockets[i].conn = conn;
			sockets[i].lastdata = NULL;
			sockets[i].lastoffset = 0;
			sockets[i].rcvevt = 0;
			sockets[i].sendevt = 1;
			sockets[i].flags = 0;
			sockets[i].err = 0;
			FUNC0(netsocket_sem);
			return i;
		}
	}

	FUNC0(netsocket_sem);
	return -1;
}
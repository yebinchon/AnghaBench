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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * tcp; } ;
struct netconn {scalar_t__ recvmbox; scalar_t__ mbox; scalar_t__ acceptmbox; scalar_t__ sem; int /*<<< orphan*/  (* callback ) (struct netconn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__ pcb; int /*<<< orphan*/  err; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  API_MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETCONN_EVTRCVPLUS ; 
 scalar_t__ SYS_MBOX_NULL ; 
 scalar_t__ SYS_SEM_NULL ; 
 int /*<<< orphan*/  FUNC3 (struct netconn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct netconn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *arg,err_t err)
{
	u32 dummy = 0;
	struct netconn *conn = (struct netconn*)arg;

	FUNC0(API_MSG_DEBUG, ("api_msg: err_tcp: %d\n",err));
	if(conn) {
		conn->err = err;
		conn->pcb.tcp = NULL;
		if(conn->recvmbox!=SYS_MBOX_NULL) {
			if(conn->callback) (*conn->callback)(conn,NETCONN_EVTRCVPLUS,0);
			FUNC2(conn->recvmbox,&dummy,MQ_MSG_BLOCK);
		}
		if(conn->mbox!=SYS_MBOX_NULL) {
			FUNC2(conn->mbox,&dummy,MQ_MSG_BLOCK);
		}
		if(conn->acceptmbox!=SYS_MBOX_NULL) {
			if(conn->callback) (*conn->callback)(conn,NETCONN_EVTRCVPLUS,0);
			FUNC2(conn->acceptmbox,&dummy,MQ_MSG_BLOCK);
		}
		if(conn->sem!=SYS_SEM_NULL) {
			FUNC1(conn->sem);
		}
	}
}
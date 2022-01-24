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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ sys_mbox ;
struct pbuf {int dummy; } ;
struct TYPE_2__ {struct netconn* conn; } ;
struct netconn {scalar_t__ type; scalar_t__ mbox; scalar_t__ recvmbox; scalar_t__ acceptmbox; int /*<<< orphan*/  sem; TYPE_1__ msg; } ;
struct netbuf {int dummy; } ;
struct api_msg {scalar_t__ type; scalar_t__ mbox; scalar_t__ recvmbox; scalar_t__ acceptmbox; int /*<<< orphan*/  sem; TYPE_1__ msg; } ;
typedef  int /*<<< orphan*/  mqmsg_t ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 scalar_t__ APIMSG_DELCONN ; 
 int /*<<< orphan*/  API_LIB_DEBUG ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMP_API_MSG ; 
 int /*<<< orphan*/  MEMP_NETCONN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  MQ_MSG_NOBLOCK ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NETCONN_TCP ; 
 scalar_t__ SYS_MBOX_NULL ; 
 int /*<<< orphan*/  SYS_SEM_NULL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (struct netconn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct netconn*) ; 
 struct netconn* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct netbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct pbuf*) ; 

__attribute__((used)) static err_t FUNC9(struct netconn *conn)
{
	u32 dummy = 0;
	struct api_msg *msg;
	sys_mbox mbox;
	void *mem;

	FUNC0(API_LIB_DEBUG, ("netconn_delete(%p)\n", conn));

	if(!conn) return ERR_OK;

	msg = FUNC6(MEMP_API_MSG);
	if(!msg) return ERR_MEM;

	msg->type = APIMSG_DELCONN;
	msg->msg.conn = conn;
	FUNC4(msg);
	FUNC3(conn->mbox,(mqmsg_t)&dummy,MQ_MSG_BLOCK);
	FUNC5(MEMP_API_MSG,msg);

	mbox = conn->recvmbox;
	conn->recvmbox = SYS_MBOX_NULL;
	if(mbox!=SYS_MBOX_NULL) {
		while(FUNC3(mbox,(mqmsg_t)&mem,MQ_MSG_NOBLOCK)==TRUE) {
			if(mem!=NULL) {
				if(conn->type==NETCONN_TCP)
					FUNC8((struct pbuf*)mem);
				else
					FUNC7((struct netbuf*)mem);
			}
		}
		FUNC2(mbox);
	}

	mbox = conn->acceptmbox;
	conn->acceptmbox = SYS_MBOX_NULL;
	if(mbox!=SYS_MBOX_NULL) {
		while(FUNC3(mbox,(mqmsg_t)&mem,MQ_MSG_NOBLOCK)==TRUE) {
			if(mem!=NULL) FUNC9((struct netconn*)mem);
		}
		FUNC2(mbox);
	}

	FUNC2(conn->mbox);
	conn->mbox = SYS_MBOX_NULL;

	FUNC1(conn->sem);
	conn->sem = SYS_SEM_NULL;

	FUNC5(MEMP_NETCONN,conn);
	return ERR_OK;
}
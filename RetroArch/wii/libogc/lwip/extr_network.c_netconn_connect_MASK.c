#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct netconn {scalar_t__ recvmbox; int err; int /*<<< orphan*/  mbox; } ;
struct ip_addr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; struct ip_addr* ipaddr; } ;
struct TYPE_5__ {TYPE_1__ bc; } ;
struct TYPE_6__ {TYPE_2__ msg; struct netconn* conn; } ;
struct api_msg {TYPE_3__ msg; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  mqmsg_t ;
typedef  int err_t ;

/* Variables and functions */
 int /*<<< orphan*/  APIMSG_CONNECT ; 
 int ERR_MEM ; 
 int /*<<< orphan*/  MEMP_API_MSG ; 
 int /*<<< orphan*/  MQBOX_SIZE ; 
 scalar_t__ MQ_ERROR_SUCCESSFUL ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SYS_MBOX_NULL ; 
 int /*<<< orphan*/  FUNC2 (struct api_msg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct api_msg*) ; 
 struct api_msg* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC5(struct netconn *conn,struct ip_addr *addr,u16 port)
{
	u32 dummy = 0;
	struct api_msg *msg;

	if(conn==NULL) return -1;
	if(conn->recvmbox==SYS_MBOX_NULL) {
		if(FUNC0(&conn->recvmbox,MQBOX_SIZE)!=MQ_ERROR_SUCCESSFUL) return ERR_MEM;
	}

	if((msg=FUNC4(MEMP_API_MSG))==NULL) return ERR_MEM;

	msg->type = APIMSG_CONNECT;
	msg->msg.conn = conn;
	msg->msg.msg.bc.ipaddr = addr;
	msg->msg.msg.bc.port = port;
	FUNC2(msg);
	FUNC1(conn->mbox,(mqmsg_t)&dummy,MQ_MSG_BLOCK);
	FUNC3(MEMP_API_MSG,msg);
	return conn->err;
}
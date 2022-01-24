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
struct netconn {scalar_t__ err; int /*<<< orphan*/  mbox; } ;
struct netbuf {TYPE_3__* p; } ;
struct TYPE_4__ {TYPE_3__* p; } ;
struct TYPE_5__ {TYPE_1__ msg; struct netconn* conn; } ;
struct api_msg {TYPE_2__ msg; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  mqmsg_t ;
typedef  scalar_t__ err_t ;
struct TYPE_6__ {int /*<<< orphan*/  tot_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIMSG_SEND ; 
 int /*<<< orphan*/  API_LIB_DEBUG ; 
 scalar_t__ ERR_MEM ; 
 scalar_t__ ERR_OK ; 
 scalar_t__ ERR_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MEMP_API_MSG ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct api_msg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct api_msg*) ; 
 struct api_msg* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC5(struct netconn *conn,struct netbuf *buf)
{
	u32 dummy = 0;
	struct api_msg *msg;

	if(conn==NULL) return ERR_VAL;
	if(conn->err!=ERR_OK) return conn->err;
	if((msg=FUNC4(MEMP_API_MSG))==NULL) return (conn->err = ERR_MEM);

	FUNC0(API_LIB_DEBUG, ("netconn_send: sending %d bytes\n", buf->p->tot_len));
	msg->type = APIMSG_SEND;
	msg->msg.conn = conn;
	msg->msg.msg.p = buf->p;
	FUNC2(msg);
	FUNC1(conn->mbox,(mqmsg_t)&dummy,MQ_MSG_BLOCK);
	FUNC3(MEMP_API_MSG,msg);
	return conn->err;
}
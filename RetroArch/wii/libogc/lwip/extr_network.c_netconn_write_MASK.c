#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int /*<<< orphan*/  tcp; } ;
struct netconn {scalar_t__ err; scalar_t__ type; int /*<<< orphan*/  state; int /*<<< orphan*/  sem; int /*<<< orphan*/  mbox; TYPE_1__ pcb; } ;
struct TYPE_6__ {scalar_t__ len; int /*<<< orphan*/  copy; void* dataptr; } ;
struct TYPE_7__ {TYPE_2__ w; } ;
struct TYPE_8__ {TYPE_3__ msg; struct netconn* conn; } ;
struct api_msg {TYPE_4__ msg; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  mqmsg_t ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 int /*<<< orphan*/  APIMSG_WRITE ; 
 int /*<<< orphan*/  API_LIB_DEBUG ; 
 scalar_t__ ERR_MEM ; 
 scalar_t__ ERR_OK ; 
 scalar_t__ ERR_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMP_API_MSG ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETCONN_NONE ; 
 scalar_t__ NETCONN_TCP ; 
 int /*<<< orphan*/  NETCONN_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct api_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct api_msg*) ; 
 struct api_msg* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static err_t FUNC7(struct netconn *conn,const void *dataptr,u32 size,u8 copy)
{
	u32 dummy = 0;
	struct api_msg *msg;
	u16 len,snd_buf;

	FUNC0(API_LIB_DEBUG, ("netconn_write(%d)\n",conn->err));

	if(conn==NULL) return ERR_VAL;
	if(conn->err!=ERR_OK) return conn->err;

	if((msg=FUNC5(MEMP_API_MSG))==NULL) return (conn->err = ERR_MEM);

	msg->type = APIMSG_WRITE;
	msg->msg.conn = conn;
	conn->state = NETCONN_WRITE;
	while(conn->err==ERR_OK && size>0) {
		msg->msg.msg.w.dataptr = (void*)dataptr;
		msg->msg.msg.w.copy = copy;
		if(conn->type==NETCONN_TCP) {
			while((snd_buf=FUNC6(conn->pcb.tcp))==0) {
				FUNC0(API_LIB_DEBUG,("netconn_write: tcp_sndbuf = 0,err = %d\n", conn->err));
				FUNC1(conn->sem);
				if(conn->err!=ERR_OK) goto ret;
			}
			if(size>snd_buf)
				len = snd_buf;
			else
				len = size;
		} else
			len = size;

		FUNC0(API_LIB_DEBUG, ("netconn_write: writing %d bytes (%d)\n", len, copy));
		msg->msg.msg.w.len = len;
		FUNC3(msg);
		FUNC2(conn->mbox,(mqmsg_t)&dummy,MQ_MSG_BLOCK);
		if(conn->err==ERR_OK) {
			FUNC0(API_LIB_DEBUG, ("netconn_write: %d bytes written\n",len));
			dataptr = (void*)((char*)dataptr+len);
			size -= len;
		} else if(conn->err==ERR_MEM) {
			FUNC0(API_LIB_DEBUG,("netconn_write: mem err\n"));
			conn->err = ERR_OK;
			FUNC1(conn->sem);
		} else {
			FUNC0(API_LIB_DEBUG,("netconn_write: err = %d\n", conn->err));
			break;
		}
	}
ret:
	FUNC4(MEMP_API_MSG,msg);
	conn->state = NETCONN_NONE;

	return conn->err;
}
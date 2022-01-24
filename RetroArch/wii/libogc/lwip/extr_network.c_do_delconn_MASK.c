#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct apimsg_msg {TYPE_11__* conn; } ;
struct TYPE_16__ {int /*<<< orphan*/  state; } ;
struct TYPE_15__ {int /*<<< orphan*/ * recv_arg; } ;
struct TYPE_14__ {TYPE_3__* tcp; TYPE_2__* udp; int /*<<< orphan*/  raw; } ;
struct TYPE_13__ {int type; scalar_t__ mbox; int /*<<< orphan*/  (* callback ) (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__ pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  LISTEN ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETCONN_EVTRCVPLUS ; 
 int /*<<< orphan*/  NETCONN_EVTSENDPLUS ; 
#define  NETCONN_RAW 132 
#define  NETCONN_TCP 131 
#define  NETCONN_UDP 130 
#define  NETCONN_UDPLITE 129 
#define  NETCONN_UDPNOCHKSUM 128 
 scalar_t__ SYS_MBOX_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC13(struct apimsg_msg *msg)
{
	u32 dummy = 0;

	if(msg->conn->pcb.tcp) {
		switch(msg->conn->type) {
			case NETCONN_RAW:
				FUNC1(msg->conn->pcb.raw);
				break;
			case NETCONN_UDPLITE:
			case NETCONN_UDPNOCHKSUM:
			case NETCONN_UDP:
				msg->conn->pcb.udp->recv_arg = NULL;
				FUNC12(msg->conn->pcb.udp);
				break;
			case NETCONN_TCP:
				if(msg->conn->pcb.tcp->state==LISTEN) {
					FUNC6(msg->conn->pcb.tcp,NULL);
					FUNC5(msg->conn->pcb.tcp,NULL);
					FUNC7(msg->conn->pcb.tcp);
				} else {
					FUNC6(msg->conn->pcb.tcp,NULL);
					FUNC11(msg->conn->pcb.tcp,NULL);
					FUNC10(msg->conn->pcb.tcp,NULL);
					FUNC9(msg->conn->pcb.tcp,NULL,0);
					FUNC8(msg->conn->pcb.tcp,NULL);
					if(FUNC7(msg->conn->pcb.tcp)!=ERR_OK)
						FUNC4(msg->conn->pcb.tcp);
				}
				break;
			default:
				break;
		}
	}
	if(msg->conn->callback) {
		(*msg->conn->callback)(msg->conn,NETCONN_EVTRCVPLUS,0);
		(*msg->conn->callback)(msg->conn,NETCONN_EVTSENDPLUS,0);
	}
	if(msg->conn->mbox!=SYS_MBOX_NULL)
		FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
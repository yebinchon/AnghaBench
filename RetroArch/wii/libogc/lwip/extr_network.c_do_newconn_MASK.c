#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  port; } ;
struct TYPE_8__ {TYPE_1__ bc; } ;
struct apimsg_msg {TYPE_4__* conn; TYPE_2__ msg; } ;
struct TYPE_9__ {scalar_t__ tcp; void* udp; int /*<<< orphan*/  raw; } ;
struct TYPE_10__ {int type; int /*<<< orphan*/  mbox; void* err; TYPE_3__ pcb; } ;

/* Variables and functions */
 void* ERR_MEM ; 
 void* ERR_OK ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  NETCONN_RAW 132 
#define  NETCONN_TCP 131 
#define  NETCONN_UDP 130 
#define  NETCONN_UDPLITE 129 
#define  NETCONN_UDPNOCHKSUM 128 
 int /*<<< orphan*/  UDP_FLAGS_NOCHKSUM ; 
 int /*<<< orphan*/  UDP_FLAGS_UDPLITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  recv_raw ; 
 int /*<<< orphan*/  recv_udp ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 () ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct apimsg_msg *msg)
{
	u32 dummy = 0;

	if(msg->conn->pcb.tcp) {
		FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
		return;
	}

	msg->conn->err = ERR_OK;
	switch(msg->conn->type) {
		case NETCONN_RAW:
			msg->conn->pcb.raw = FUNC1(msg->msg.bc.port);
			FUNC2(msg->conn->pcb.raw,recv_raw,msg->conn);
			break;
		case NETCONN_UDPLITE:
			msg->conn->pcb.udp = FUNC5();
			if(!msg->conn->pcb.udp) {
				msg->conn->err = ERR_MEM;
				break;
			}
			FUNC7(msg->conn->pcb.udp,UDP_FLAGS_UDPLITE);
			FUNC6(msg->conn->pcb.udp,recv_udp,msg->conn);
			break;
		case NETCONN_UDPNOCHKSUM:
			msg->conn->pcb.udp = FUNC5();
			if(!msg->conn->pcb.udp) {
				msg->conn->err = ERR_MEM;
				break;
			}
			FUNC7(msg->conn->pcb.udp,UDP_FLAGS_NOCHKSUM);
			FUNC6(msg->conn->pcb.udp,recv_udp,msg->conn);
			break;
		case NETCONN_UDP:
			msg->conn->pcb.udp = FUNC5();
			if(!msg->conn->pcb.udp) {
				msg->conn->err = ERR_MEM;
				break;
			}
			FUNC6(msg->conn->pcb.udp,recv_udp,msg->conn);
			break;
		case NETCONN_TCP:
			msg->conn->pcb.tcp = FUNC4();
			if(!msg->conn->pcb.tcp) {
				msg->conn->err = ERR_MEM;
				break;
			}
			FUNC3(msg->conn);
			break;
		default:
			break;
	}
	FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
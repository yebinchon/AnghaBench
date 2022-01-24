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
struct TYPE_8__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ipaddr; } ;
struct TYPE_9__ {TYPE_2__ bc; } ;
struct apimsg_msg {TYPE_3__ msg; TYPE_4__* conn; } ;
struct TYPE_7__ {int /*<<< orphan*/  tcp; void* udp; int /*<<< orphan*/  raw; } ;
struct TYPE_10__ {int type; TYPE_1__ pcb; int /*<<< orphan*/  mbox; void* err; } ;

/* Variables and functions */
 void* ERR_MEM ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  NETCONN_RAW 132 
#define  NETCONN_TCP 131 
#define  NETCONN_UDP 130 
#define  NETCONN_UDPLITE 129 
#define  NETCONN_UDPNOCHKSUM 128 
 int /*<<< orphan*/  UDP_FLAGS_NOCHKSUM ; 
 int /*<<< orphan*/  UDP_FLAGS_UDPLITE ; 
 int /*<<< orphan*/  do_connected ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  recv_raw ; 
 int /*<<< orphan*/  recv_udp ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct apimsg_msg *msg)
{
	u32 dummy = 0;

	if(!msg->conn->pcb.tcp) {
		switch(msg->conn->type) {
			case NETCONN_RAW:
				msg->conn->pcb.raw = FUNC2(msg->msg.bc.port);
				FUNC3(msg->conn->pcb.raw,recv_raw,msg->conn);
				break;
			case NETCONN_UDPLITE:
				msg->conn->pcb.udp = FUNC8();
				if(!msg->conn->pcb.udp) {
					msg->conn->err = ERR_MEM;
					FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
					return;
				}
				FUNC10(msg->conn->pcb.udp,UDP_FLAGS_UDPLITE);
				FUNC9(msg->conn->pcb.udp,recv_udp,msg->conn);
				break;
			case NETCONN_UDPNOCHKSUM:
				msg->conn->pcb.udp = FUNC8();
				if(!msg->conn->pcb.udp) {
					msg->conn->err = ERR_MEM;
					FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
					return;
				}
				FUNC10(msg->conn->pcb.udp,UDP_FLAGS_NOCHKSUM);
				FUNC9(msg->conn->pcb.udp,recv_udp,msg->conn);
				break;
			case NETCONN_UDP:
				msg->conn->pcb.udp = FUNC8();
				if(!msg->conn->pcb.udp) {
					msg->conn->err = ERR_MEM;
					FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
					return;
				}
				FUNC9(msg->conn->pcb.udp,recv_udp,msg->conn);
				break;
			case NETCONN_TCP:
				msg->conn->pcb.tcp = FUNC6();
				if(!msg->conn->pcb.tcp) {
					msg->conn->err = ERR_MEM;
					FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
					return;
				}
				break;
			default:
				break;
		}
	}
	switch(msg->conn->type) {
		case NETCONN_RAW:
			FUNC1(msg->conn->pcb.raw,msg->msg.bc.ipaddr);
			FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
			break;
		case NETCONN_UDPLITE:
		case NETCONN_UDPNOCHKSUM:
		case NETCONN_UDP:
			FUNC7(msg->conn->pcb.udp,msg->msg.bc.ipaddr,msg->msg.bc.port);
			FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
			break;
		case NETCONN_TCP:
			FUNC4(msg->conn);
			FUNC5(msg->conn->pcb.tcp,msg->msg.bc.ipaddr,msg->msg.bc.port,do_connected);
			break;
		default:
			break;
	}
}
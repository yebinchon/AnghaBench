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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  p; } ;
struct apimsg_msg {TYPE_2__* conn; TYPE_3__ msg; } ;
struct TYPE_4__ {int /*<<< orphan*/  udp; int /*<<< orphan*/  raw; scalar_t__ tcp; } ;
struct TYPE_5__ {int type; int /*<<< orphan*/  mbox; TYPE_1__ pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  NETCONN_RAW 132 
#define  NETCONN_TCP 131 
#define  NETCONN_UDP 130 
#define  NETCONN_UDPLITE 129 
#define  NETCONN_UDPNOCHKSUM 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct apimsg_msg *msg)
{
	u32 dummy = 0;

	if(msg->conn->pcb.tcp) {
		switch(msg->conn->type) {
			case NETCONN_RAW:
				FUNC1(msg->conn->pcb.raw,msg->msg.p);
				break;
			case NETCONN_UDPLITE:
			case NETCONN_UDPNOCHKSUM:
			case NETCONN_UDP:
				FUNC2(msg->conn->pcb.udp,msg->msg.p);
				break;
			case NETCONN_TCP:
				break;
		}
	}
	FUNC0(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
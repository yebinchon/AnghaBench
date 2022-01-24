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
struct TYPE_2__ {struct api_msg* apimsg; } ;
struct net_msg {TYPE_1__ msg; int /*<<< orphan*/  type; } ;
struct api_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MEMP_API_MSG ; 
 int /*<<< orphan*/  MEMP_TCPIP_MSG ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETMSG_API ; 
 int /*<<< orphan*/  TCPIP_DEBUG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct api_msg*) ; 
 struct net_msg* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netthread_mbox ; 

__attribute__((used)) static void FUNC5(struct api_msg *apimsg)
{
	struct net_msg *msg = FUNC4(MEMP_TCPIP_MSG);

	FUNC0(TCPIP_DEBUG, ("net_apimsg: %p\n",apimsg));
	if(msg==NULL) {
		FUNC1(("net_apimsg: msg out of memory.\n"));
		FUNC3(MEMP_API_MSG,apimsg);
		return;
	}

	msg->type = NETMSG_API;
	msg->msg.apimsg = apimsg;
	FUNC2(netthread_mbox,msg,MQ_MSG_BLOCK);
}
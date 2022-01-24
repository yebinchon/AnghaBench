#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void (* f ) (void*) ;void* ctx; } ;
struct TYPE_4__ {TYPE_1__ cb; } ;
struct net_msg {TYPE_2__ msg; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MEMP_TCPIP_MSG ; 
 int /*<<< orphan*/  MQ_MSG_BLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETMSG_CALLBACK ; 
 int /*<<< orphan*/  TCPIP_DEBUG ; 
 struct net_msg* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netthread_mbox ; 

__attribute__((used)) static err_t FUNC4(void (*f)(void *),void *ctx)
{
	struct net_msg *msg = FUNC3(MEMP_TCPIP_MSG);

	FUNC0(TCPIP_DEBUG, ("net_callback: %p(%p)\n", f,ctx));

	if(msg==NULL) {
		FUNC1(("net_apimsg: msg out of memory.\n"));
		return ERR_MEM;
	}

	msg->type = NETMSG_CALLBACK;
	msg->msg.cb.f = f;
	msg->msg.cb.ctx = ctx;
	FUNC2(netthread_mbox,msg,MQ_MSG_BLOCK);
	return ERR_OK;
}
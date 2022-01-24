#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32_t ;
typedef  scalar_t__ u16_t ;
struct tcpip_sock {TYPE_1__* pcb; } ;
typedef  scalar_t__ s8_t ;
typedef  int s32_t ;
struct TYPE_4__ {int flags; int snd_queuelen; int /*<<< orphan*/  unacked; } ;

/* Variables and functions */
 scalar_t__ UIP_ERR_OK ; 
 int UIP_TF_NODELAY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct tcpip_sock* FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,void const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

s32_t FUNC5(s32_t s,const void *buffer,u32_t len)
{
	s8_t err;
	u16_t snd_buf,copy;
	struct tcpip_sock *sock;

	sock = FUNC1(s);
	if(!sock) return -1;

//	printf("tcpip_write()\n");
	while(len>0) {
		do {
			FUNC0();
		} while((snd_buf=FUNC2(sock->pcb))==0);

		if(len>snd_buf) copy = snd_buf;
		else copy = len;

		err = FUNC3(sock->pcb,buffer,copy,1);
		if(err==UIP_ERR_OK && (!sock->pcb->unacked || sock->pcb->flags&UIP_TF_NODELAY || sock->pcb->snd_queuelen>1))
			FUNC4(sock->pcb);

		buffer = buffer+copy;
		len -= copy;
	}
	return UIP_ERR_OK;
}
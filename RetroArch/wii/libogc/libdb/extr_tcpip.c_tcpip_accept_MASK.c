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
struct tcpip_sock {int dummy; } ;
typedef  int s32_t ;
struct TYPE_2__ {int socket; struct TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* tcpip_accepted_sockets ; 
 struct tcpip_sock* FUNC1 (int) ; 

s32_t FUNC2(s32_t s)
{
	s32_t newsock = -1;
	struct tcpip_sock *sock;

	sock = FUNC1(s);
	if(sock==NULL) return -1;

	do {
		FUNC0();
	} while(!tcpip_accepted_sockets);

	newsock = tcpip_accepted_sockets->socket;
	tcpip_accepted_sockets = tcpip_accepted_sockets->next;

	return newsock;
}
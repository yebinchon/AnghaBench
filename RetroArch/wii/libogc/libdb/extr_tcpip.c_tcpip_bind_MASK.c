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
typedef  int /*<<< orphan*/  u16_t ;
struct uip_ip_addr {int /*<<< orphan*/  addr; } ;
struct tcpip_sock {int /*<<< orphan*/  pcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  s8_t ;
typedef  int s32_t ;

/* Variables and functions */
 struct tcpip_sock* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct uip_ip_addr*,int /*<<< orphan*/ ) ; 

s32_t FUNC2(s32_t s,struct sockaddr *name,socklen_t *namelen)
{
	struct tcpip_sock *sock;
	struct uip_ip_addr local_ip;
	u16_t local_port;
	s8_t err;

	sock = FUNC0(s);
	if(!sock) return -1;

	local_ip.addr = ((struct sockaddr_in*)name)->sin_addr.s_addr;
	local_port = ((struct sockaddr_in*)name)->sin_port;

	err = FUNC1(sock->pcb,&local_ip,local_port);

	return (s32_t)err;
}
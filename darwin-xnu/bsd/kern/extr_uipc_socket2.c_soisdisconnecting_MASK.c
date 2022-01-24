#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct socket {int so_state; int /*<<< orphan*/  so_timeo; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SO_FILT_HINT_LOCKED ; 
 int SS_CANTRCVMORE ; 
 int SS_CANTSENDMORE ; 
 int SS_ISCONNECTING ; 
 int SS_ISDISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sock_evt_disconnecting ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct socket *so)
{
	so->so_state &= ~SS_ISCONNECTING;
	so->so_state |= (SS_ISDISCONNECTING|SS_CANTRCVMORE|SS_CANTSENDMORE);
	FUNC1(so, SO_FILT_HINT_LOCKED);
	FUNC0(so, sock_evt_disconnecting, NULL);
	FUNC4((caddr_t)&so->so_timeo);
	FUNC3(so);
	FUNC2(so);
}
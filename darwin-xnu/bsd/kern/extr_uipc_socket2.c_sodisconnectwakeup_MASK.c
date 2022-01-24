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
 int /*<<< orphan*/  SHUT_RDWR ; 
 int SO_FILT_HINT_CONNINFO_UPDATED ; 
 int SO_FILT_HINT_DISCONNECTED ; 
 int SO_FILT_HINT_LOCKED ; 
 int SS_CANTRCVMORE ; 
 int SS_CANTSENDMORE ; 
 int SS_ISCONNECTED ; 
 int SS_ISCONNECTING ; 
 int SS_ISDISCONNECTED ; 
 int SS_ISDISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct socket *so)
{
	so->so_state &= ~(SS_ISCONNECTING|SS_ISCONNECTED|SS_ISDISCONNECTING);
	so->so_state |= (SS_CANTRCVMORE|SS_CANTSENDMORE|SS_ISDISCONNECTED);
	FUNC1(so, SO_FILT_HINT_LOCKED | SO_FILT_HINT_DISCONNECTED |
	    SO_FILT_HINT_CONNINFO_UPDATED);
	FUNC4((caddr_t)&so->so_timeo);
	FUNC3(so);
	FUNC2(so);

#if CONTENT_FILTER
	/* Notify content filters as soon as we cannot send/receive data */
	cfil_sock_notify_shutdown(so, SHUT_RDWR);
#endif /* CONTENT_FILTER */
}
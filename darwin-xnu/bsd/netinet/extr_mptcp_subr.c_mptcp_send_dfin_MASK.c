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
struct tcpcb {int t_mpflags; } ;
struct socket {int dummy; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 int TMPF_RESET ; 
 int TMPF_SEND_DFIN ; 
 struct tcpcb* FUNC0 (struct inpcb*) ; 
 struct inpcb* FUNC1 (struct socket*) ; 

__attribute__((used)) static void
FUNC2(struct socket *so)
{
	struct tcpcb *tp = NULL;
	struct inpcb *inp = NULL;

	inp = FUNC1(so);
	if (!inp)
		return;

	tp = FUNC0(inp);
	if (!tp)
		return;

	if (!(tp->t_mpflags & TMPF_RESET))
		tp->t_mpflags |= TMPF_SEND_DFIN;
}
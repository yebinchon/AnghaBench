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
struct tty {int t_ospeed; unsigned int t_lowat; int /*<<< orphan*/  t_hiwat; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBSIZE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTMAXHIWAT ; 
 int /*<<< orphan*/  TTMAXLOWAT ; 
 int /*<<< orphan*/  TTMINHIWAT ; 
 int /*<<< orphan*/  TTMINLOWAT ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

void
FUNC3(struct tty *tp)
{
	int cps;
	unsigned int x;

	FUNC1(tp);	/* debug assert */

#define CLAMP(x, h, l)	((x) > h ? h : ((x) < l) ? l : (x))

	cps = tp->t_ospeed / 10;
	tp->t_lowat = x = CLAMP(cps / 2, TTMAXLOWAT, TTMINLOWAT);
	x += cps;
	x = CLAMP(x, TTMAXHIWAT, TTMINHIWAT);
	tp->t_hiwat = FUNC2(x, CBSIZE);
#undef	CLAMP
}
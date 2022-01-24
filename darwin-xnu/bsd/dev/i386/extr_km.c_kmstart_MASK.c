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
struct TYPE_3__ {scalar_t__ c_cc; } ;
struct tty {int t_state; size_t t_line; TYPE_1__ t_outq; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* l_start ) (struct tty*) ;} ;

/* Variables and functions */
 int TS_BUSY ; 
 int TS_TIMEOUT ; 
 int TS_TTSTOP ; 
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 TYPE_2__* linesw ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 

__attribute__((used)) static void 
FUNC2(struct tty *tp)
{
	if (tp->t_state & (TS_TIMEOUT | TS_BUSY | TS_TTSTOP))
		goto out;
	if (tp->t_outq.c_cc == 0)
		goto out;
	tp->t_state |= TS_BUSY;
	FUNC0(tp);
	return;

out:
	(*linesw[tp->t_line].l_start)(tp);
	return;
}
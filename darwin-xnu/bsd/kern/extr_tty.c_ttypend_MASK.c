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
struct clist {int /*<<< orphan*/ * c_cl; int /*<<< orphan*/  c_cf; scalar_t__ c_cc; } ;
struct tty {int /*<<< orphan*/  t_state; struct clist t_rawq; int /*<<< orphan*/  t_lflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PENDIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_TYPEN ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int FUNC3 (struct clist*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct tty*) ; 

__attribute__((used)) static void
FUNC5(struct tty *tp)
{
	struct clist tq;
	int c;

	FUNC2(tp);	/* debug assert */

	FUNC0(tp->t_lflag, PENDIN);
	FUNC1(tp->t_state, TS_TYPEN);
	tq = tp->t_rawq;
	tp->t_rawq.c_cc = 0;
	tp->t_rawq.c_cf = *(tp->t_rawq.c_cl = NULL);
	while ((c = FUNC3(&tq)) >= 0)
		FUNC4(c, tp);
	FUNC0(tp->t_state, TS_TYPEN);
}
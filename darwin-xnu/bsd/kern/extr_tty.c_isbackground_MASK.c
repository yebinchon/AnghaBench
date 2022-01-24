#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty {TYPE_1__* t_pgrp; int /*<<< orphan*/ * t_session; } ;
typedef  TYPE_2__* proc_t ;
struct TYPE_6__ {TYPE_1__* p_pgrp; } ;
struct TYPE_5__ {int /*<<< orphan*/  pg_session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,struct tty*,int /*<<< orphan*/ ) ; 

int
FUNC2(proc_t p, struct tty  *tp)
{
	FUNC0(tp);

	return (tp->t_session != NULL && p->p_pgrp != NULL && (p->p_pgrp != tp->t_pgrp) && FUNC1(p, tp, p->p_pgrp->pg_session));
}
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
struct TYPE_3__ {TYPE_2__* p_proc; } ;
struct knote {TYPE_1__ kn_ptr; } ;
typedef  TYPE_2__* proc_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_klist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct knote *kn)
{
	proc_t p = kn->kn_ptr.p_proc;

	FUNC1();
	kn->kn_ptr.p_proc = NULL;
	FUNC0(&p->p_klist, kn);
	FUNC2();
}
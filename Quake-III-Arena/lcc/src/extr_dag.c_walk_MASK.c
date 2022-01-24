#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tree ;
struct TYPE_8__ {int /*<<< orphan*/  wants_dag; } ;
struct TYPE_5__ {int /*<<< orphan*/ * forest; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/ * link; } ;
typedef  int /*<<< orphan*/ * Node ;

/* Variables and functions */
 int /*<<< orphan*/  Gen ; 
 TYPE_4__* IR ; 
 int /*<<< orphan*/  STMT ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* forest ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(Tree tp, int tlab, int flab) {
	FUNC2(tp, tlab, flab);
	if (forest) {
		Node list = forest->link;
		forest->link = NULL;
		if (!IR->wants_dag)
			list = FUNC4(list);
		FUNC0(Gen)->u.forest = list;
		forest = NULL;
	}
	FUNC3();
	FUNC1(STMT);
}
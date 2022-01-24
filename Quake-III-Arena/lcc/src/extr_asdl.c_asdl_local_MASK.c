#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* next; scalar_t__ cse; } ;
struct TYPE_11__ {TYPE_2__ t; } ;
struct TYPE_9__ {scalar_t__ offset; } ;
struct TYPE_12__ {TYPE_3__ u; scalar_t__ temporary; TYPE_1__ x; } ;
typedef  TYPE_4__* Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* temps ; 

__attribute__((used)) static void FUNC5(Symbol p) {
	FUNC0(p->x.offset == 0);
	FUNC2(FUNC3(FUNC4(p), FUNC1(p)));
	if (p->temporary && p->u.t.cse) {
		p->u.t.next = temps;
		temps = p;
	}
}
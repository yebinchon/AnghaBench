#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  label; } ;
struct TYPE_7__ {TYPE_1__ l; } ;
struct TYPE_8__ {scalar_t__ scope; TYPE_2__ u; } ;
typedef  TYPE_3__* Symbol ;

/* Variables and functions */
 scalar_t__ LABELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(Symbol p) {
	if (p->scope == LABELS)
		FUNC0(FUNC2(p->u.l.label));
	else
		FUNC0(FUNC1(FUNC3(p)));
}
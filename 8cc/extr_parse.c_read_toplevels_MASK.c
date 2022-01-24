#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_2__ {scalar_t__ kind; } ;

/* Variables and functions */
 scalar_t__ TEOF ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * toplevels ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Vector *FUNC6() {
    toplevels = FUNC1();
    for (;;) {
        if (FUNC2()->kind == TEOF)
            return toplevels;
        if (FUNC0())
            FUNC5(toplevels, FUNC4());
        else
            FUNC3(toplevels, true);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ beg; } ;
typedef  TYPE_1__ Case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(Vector *cases) {
    int len = FUNC2(cases);
    Case *x = FUNC1(cases, len - 1);
    for (int i = 0; i < len - 1; i++) {
        Case *y = FUNC1(cases, i);
        if (x->end < y->beg || y->end < x->beg)
            continue;
        if (x->beg == x->end)
            FUNC0("duplicate case value: %d", x->beg);
        FUNC0("duplicate case value: %d ... %d", x->beg, x->end);
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ f; } ;
typedef  TYPE_1__ Test ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(Test *ts, int limit)
{
    int nrun = 0;
    Test *t;
    for (t=ts; t->f; t++) {
        if (nrun >= limit) {
            FUNC1(ts);
            nrun--;
        }
        FUNC0(t);
        nrun++;
    }
    for (; nrun; nrun--) {
        FUNC1(ts);
    }
}
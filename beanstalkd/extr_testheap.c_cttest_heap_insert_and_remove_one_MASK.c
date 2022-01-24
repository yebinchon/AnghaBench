#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  data; int /*<<< orphan*/  setpos; int /*<<< orphan*/  less; } ;
typedef  int /*<<< orphan*/  Job ;
typedef  TYPE_1__ Heap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  job_pri_less ; 
 int /*<<< orphan*/  job_setpos ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6()
{
    Heap h = {
        .less = job_pri_less,
        .setpos = job_setpos,
    };

    Job *j1 = FUNC5(1, 0, 1, 0, 0);
    FUNC0(*j1, "allocate job");

    int r = FUNC2(&h, j1);
    FUNC0(r, "insert should succeed");

    Job *got = FUNC3(&h, 0);
    FUNC0(got == j1, "j1 should come back out");
    FUNC0(h.len == 0, "h should be empty.");

    FUNC1(h.data);
    FUNC4(j1);
}
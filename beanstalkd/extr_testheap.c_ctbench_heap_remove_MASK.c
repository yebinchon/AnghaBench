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
struct TYPE_4__ {int /*<<< orphan*/ ** data; int /*<<< orphan*/  setpos; int /*<<< orphan*/  less; } ;
typedef  int /*<<< orphan*/  Job ;
typedef  TYPE_1__ Heap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ ** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  job_pri_less ; 
 int /*<<< orphan*/  job_setpos ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(int n)
{
    Heap h = {
        .less = job_pri_less,
        .setpos = job_setpos,
    };
    int i;
    for (i = 0; i < n; i++) {
        Job *j = FUNC8(1, 0, 1, 0, 0);
        FUNC0(j, "allocate job");
        FUNC5(&h, j);
    }
    Job **jj = FUNC1(n, sizeof(Job *)); // temp storage to deallocate jobs later

    FUNC2();
    for (i = 0; i < n; i++) {
        jj[i] = (Job *)FUNC6(&h, 0);
    }
    FUNC3();

    FUNC4(h.data);
    for (i = 0; i < n; i++)
        FUNC7(jj[i]);
    FUNC4(jj);
}
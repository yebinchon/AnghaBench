#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tail; int /*<<< orphan*/  cur; } ;
typedef  TYPE_1__ Wal ;
typedef  int /*<<< orphan*/  Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*) ; 

void
FUNC5(Wal *w, Job *list)
{
    int min;

    min = FUNC4(w);
    FUNC3(w, list, min);

    // first writable file
    if (!FUNC1(w)) {
        FUNC2("makenextfile");
        FUNC0(1);
    }

    w->cur = w->tail;
}
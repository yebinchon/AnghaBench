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
struct TYPE_3__ {unsigned int nextJobID; int /*<<< orphan*/  mutex; int /*<<< orphan*/  ldmWindowMutex; int /*<<< orphan*/  ldmWindowCond; int /*<<< orphan*/  ldmWindow; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ serialState_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(serialState_t* serialState,
                                              unsigned jobID, size_t cSize)
{
    FUNC1(&serialState->mutex);
    if (serialState->nextJobID <= jobID) {
        FUNC7(FUNC2(cSize)); (void)cSize;
        FUNC0(5, "Skipping past job %u because of error", jobID);
        serialState->nextJobID = jobID + 1;
        FUNC3(&serialState->cond);

        FUNC1(&serialState->ldmWindowMutex);
        FUNC6(&serialState->ldmWindow);
        FUNC4(&serialState->ldmWindowCond);
        FUNC5(&serialState->ldmWindowMutex);
    }
    FUNC5(&serialState->mutex);

}
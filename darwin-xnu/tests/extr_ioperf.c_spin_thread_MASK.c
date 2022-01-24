#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  SPIN_SECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  semaphore ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  worker_sem ; 

__attribute__((used)) static void *
FUNC5(void *arg)
{
    uint32_t thread_id = (uint32_t) arg;
    char name[30] = "";

    FUNC3(name, sizeof(name), "spin thread %2d", thread_id);
    FUNC1(name);
    FUNC0(FUNC2(semaphore, worker_sem),
            "semaphore_wait_signal");
    FUNC4(SPIN_SECS);
    return NULL;
}
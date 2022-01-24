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
struct TYPE_2__ {int /*<<< orphan*/  delete_done; int /*<<< orphan*/  timer; int /*<<< orphan*/  delete_start; } ;
typedef  TYPE_1__ timer_delete_test_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void* arg)
{
    timer_delete_test_args_t* args = (timer_delete_test_args_t*) arg;
    FUNC4(args->delete_start, portMAX_DELAY);
    FUNC1("Deleting the timer\n");
    FUNC0(args->timer);
    FUNC1("Timer deleted\n");
    FUNC3(args->delete_done);
    FUNC2(NULL);
}
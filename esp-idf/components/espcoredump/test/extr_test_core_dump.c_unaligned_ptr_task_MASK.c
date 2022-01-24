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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void *pvParameter)
{
    FUNC1("Task 'unaligned_ptr_task' start.\n");
    while (1) {
        FUNC3(1000 / portTICK_RATE_MS);
        FUNC1("Task 'unaligned_ptr_task' run.\n");
        FUNC2();
    }
    FUNC0(stdout);
}
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
typedef  int /*<<< orphan*/  TaskHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  eNoAction ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 scalar_t__ pdPASS ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(void *pvParameter)
{
    TaskHandle_t task = (TaskHandle_t)pvParameter;

    while(1) {
        if (FUNC4(0, 0, NULL, portMAX_DELAY) != pdPASS) {
            FUNC2("Failed to wait for main task!\n");
            return;
        }
        void *a = FUNC1(65);
        FUNC2("Alloced 65 bytes @ %p\n", a);
        void *b = FUNC1(97);
        FUNC2("Alloced 97 bytes @ %p\n", b);
        FUNC0(a);
        FUNC2("Freed @ %p\n", a);
        b = FUNC1(11);
        FUNC2("Alloced 11 bytes @ %p\n", b);
        b = FUNC1(24);
        FUNC2("Alloced 24 bytes @ %p\n", b);
        FUNC0(b);
        FUNC2("Freed @ %p\n", b);
        if (FUNC3(task, 0, eNoAction) != pdPASS) {
            FUNC2("Failed to notify main task!\n");
            return;
        }
    }
}
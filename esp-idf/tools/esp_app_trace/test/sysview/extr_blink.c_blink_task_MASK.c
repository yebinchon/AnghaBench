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
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  HEAP_TRACE_ALL ; 
 int /*<<< orphan*/  blink_task2 ; 
 int /*<<< orphan*/  eNoAction ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int) ; 
 scalar_t__ pdPASS ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC10(void *pvParameter)
{
    TaskHandle_t task = 0;

    if(FUNC1() != ESP_OK) {
        FUNC5("Failed to init heap trace!\n");
        return;
    }
    FUNC6(&blink_task2, "blink_task2", 2048, FUNC7(), 5, &task, 1);

    while(1) {
        FUNC2(HEAP_TRACE_ALL);
        if (FUNC8(task, 0, eNoAction) != pdPASS) {
            FUNC5("Failed to notify slave task!\n");
            return;
        }
        void *a = FUNC4(64);
        FUNC5("Alloced 64 bytes @ %p\n", a);
        void *b = FUNC4(96);
        FUNC5("Alloced 96 bytes @ %p\n", b);
        FUNC0(a);
        FUNC5("Freed @ %p\n", a);
        b = FUNC4(10);
        FUNC5("Alloced 10 bytes @ %p\n", b);
        b = FUNC4(23);
        FUNC5("Alloced 23 bytes @ %p\n", b);
        FUNC0(b);
        FUNC5("Freed @ %p\n", b);
        if (FUNC9(0, 0, NULL, portMAX_DELAY) != pdPASS) {
            FUNC5("Failed to wait for slave task!\n");
            return;
        }
        FUNC3();
    }
}
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
typedef  int /*<<< orphan*/ * TaskHandle_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

void FUNC3(){
    TaskHandle_t idle_1 = FUNC2(1);
    if(idle_1 == NULL || FUNC0(idle_1) != ESP_OK){
        FUNC1("Failed to add Core 1 IDLE task to WDT");
    }
}
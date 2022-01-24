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
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(){
    TaskHandle_t idle_0 = FUNC2(0);
    if(idle_0 == NULL || FUNC0(idle_0) != ESP_OK){
        FUNC1("Failed to remove Core 0 IDLE task from WDT");
    }
}
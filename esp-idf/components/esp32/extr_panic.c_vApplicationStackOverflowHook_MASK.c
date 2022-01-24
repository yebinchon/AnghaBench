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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void  __attribute__((weak)) FUNC2( TaskHandle_t xTask, signed char *pcTaskName )
{
    FUNC1("***ERROR*** A stack overflow in task ");
    FUNC1((char *)pcTaskName);
    FUNC1(" has been detected.\r\n");
    FUNC0();
}
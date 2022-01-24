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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int joy_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * joys ; 

void FUNC3(void)    {
    int i;

    for(i = 0; i < joy_count; ++i)  {
        FUNC1(joys + i);
        FUNC2(joys + i);
    }

    if(joys != NULL)    {
        FUNC0(joys);
        joys = NULL;
    }

    joy_count = 0;
}
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
typedef  int /*<<< orphan*/  joydata_t ;

/* Variables and functions */
 int initted ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int joycount ; 
 int /*<<< orphan*/ ** joys ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(void) {
    int i;

    /* Don't bother trying to init the thing again. */
    if(initted)
        return 0;

    /* Grab the number of joysticks connected to the system. */
    joycount = FUNC2();
    if(joycount == -1)  {
        joycount = 0;
        return -1;
    }

    joys = (joydata_t **)FUNC3(sizeof(joydata_t *) * joycount);
    if(!joys)   {
        joycount = 0;
        return -1;
    }

    /* Grab each joystick and open it. */
    for(i = 0; i < joycount; ++i)   {
        joys[i] = FUNC0(i);

        if(joys[i] == NULL)
            continue;

        if(!FUNC1(joys[i])) {
            joys[i] = NULL;
            continue;
        }
    }

    initted = 1;

    return 0;
}
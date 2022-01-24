#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int axes_count; int buttons_count; int hats_count; TYPE_6__* hats; TYPE_2__* buttons; TYPE_1__* axes; } ;
typedef  TYPE_3__ joydata_t ;
struct TYPE_12__ {int min; int max; } ;
struct TYPE_10__ {int min; } ;
struct TYPE_9__ {int min; int max; } ;

/* Variables and functions */
 int AXIS_NEGATIVE_VALUE ; 
 int AXIS_POSITIVE_VALUE ; 
 int HAT_VALUE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (TYPE_3__*,TYPE_6__*) ; 
 int joycount ; 
 TYPE_3__** joys ; 

int FUNC7(void) {
    int i, j, k, data;
    joydata_t *joy;

    /* Check each joystick. */
    for(i = 0; i < joycount; ++i)   {
        joy = joys[i];

        if(!joy)    {
            continue;
        }

        /* Handle each axis. */
        for(j = 0; j < joy->axes_count; ++j)    {
            int midpoint = FUNC0(joy->axes[j].min, joy->axes[j].max);

            data = FUNC4(joy, j);

            if(joy->axes[j].max > 0 &&
               data > FUNC0(midpoint, joy->axes[j].max))   {
                FUNC1((i << 24) | AXIS_POSITIVE_VALUE | j);
                FUNC2((i << 24) | AXIS_NEGATIVE_VALUE | j);
            }
            else if(joy->axes[j].min < 0 &&
                    data < FUNC0(midpoint, joy->axes[j].min))  {
                FUNC2((i << 24) | AXIS_POSITIVE_VALUE | j);
                FUNC1((i << 24) | AXIS_NEGATIVE_VALUE | j);
            }
            else    {
                FUNC2((i << 24) | AXIS_POSITIVE_VALUE | j);
                FUNC2((i << 24) | AXIS_NEGATIVE_VALUE | j);
            }
        }

        /* Handle each button. */
        for(j = 1; j <= joy->buttons_count; ++j)    {
            data = FUNC5(joy, j);

            if(data > joy->buttons[j].min)  {
                FUNC1((i << 24) | j);
            }
            else    {
                FUNC2((i << 24) | j);
            }
        }

        /* Handle any hats. */
        for(j = 0; j < joy->hats_count; ++j)    {
            data = FUNC6(joy, joy->hats + j);

            for(k = joy->hats[j].min; k < joy->hats[j].max; ++k)    {
                if(data == k)   {
                    FUNC1((i << 24) | HAT_VALUE | (k << 8) | j);
                }
                else    {
                    FUNC2((i << 24) | HAT_VALUE | (k << 8) | j);
                }
            }
        }
    }

    if(FUNC3() != 0)  {
        return -1;
    }

    return 0;
}
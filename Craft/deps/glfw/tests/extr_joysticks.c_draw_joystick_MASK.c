#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int axis_count; float* axes; int button_count; scalar_t__* buttons; } ;
typedef  TYPE_1__ Joystick ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 

__attribute__((used)) static void FUNC2(Joystick* j, int x, int y, int width, int height)
{
    int i;
    const int axis_height = 3 * height / 4;
    const int button_height = height / 4;

    if (j->axis_count)
    {
        const int axis_width = width / j->axis_count;

        for (i = 0;  i < j->axis_count;  i++)
        {
            float value = j->axes[i] / 2.f + 0.5f;

            FUNC0(0.3f, 0.3f, 0.3f);
            FUNC1(x + i * axis_width,
                    y,
                    x + (i + 1) * axis_width,
                    y + axis_height);

            FUNC0(1.f, 1.f, 1.f);
            FUNC1(x + i * axis_width,
                    y + (int) (value * (axis_height - 5)),
                    x + (i + 1) * axis_width,
                    y + 5 + (int) (value * (axis_height - 5)));
        }
    }

    if (j->button_count)
    {
        const int button_width = width / j->button_count;

        for (i = 0;  i < j->button_count;  i++)
        {
            if (j->buttons[i])
                FUNC0(1.f, 1.f, 1.f);
            else
                FUNC0(0.3f, 0.3f, 0.3f);

            FUNC1(x + i * button_width,
                    y + axis_height,
                    x + (i + 1) * button_width,
                    y + axis_height + button_height);
        }
    }
}
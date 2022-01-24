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
struct TYPE_3__ {unsigned short* red; unsigned short* green; unsigned short* blue; int size; } ;
typedef  int /*<<< orphan*/  GLFWmonitor ;
typedef  TYPE_1__ GLFWgammaramp ;

/* Variables and functions */
 float FLT_MAX ; 
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 double FUNC3 (double,double) ; 

void FUNC4(GLFWmonitor* handle, float gamma)
{
    int i;
    unsigned short values[256];
    GLFWgammaramp ramp;

    FUNC0();

    if (gamma != gamma || gamma <= 0.f || gamma > FLT_MAX)
    {
        FUNC1(GLFW_INVALID_VALUE, "Invalid gamma value");
        return;
    }

    for (i = 0;  i < 256;  i++)
    {
        double value;

        // Calculate intensity
        value = i / 255.0;
        // Apply gamma curve
        value = FUNC3(value, 1.0 / gamma) * 65535.0 + 0.5;

        // Clamp to value range
        if (value > 65535.0)
            value = 65535.0;

        values[i] = (unsigned short) value;
    }

    ramp.red = values;
    ramp.green = values;
    ramp.blue = values;
    ramp.size = 256;

    FUNC2(handle, &ramp);
}
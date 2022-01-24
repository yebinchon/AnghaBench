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
typedef  int /*<<< orphan*/  hb_value_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 double FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(hb_value_t *rate_value)
{
    // Predefined by name
    if (FUNC2(rate_value) == HB_VALUE_TYPE_STRING)
    {
        int rate = 0;
        const char *rate_name = FUNC1(rate_value);
        if (!FUNC5(rate_name, "source") ||
            !FUNC5(rate_name, "auto") ||
            !FUNC5(rate_name, "same as source"))
        {
            return rate;
        }
        else
        {
            rate = FUNC3(rate_name);
            if (rate != -1)
            {
                return rate;
            }
        }
    }

    // Arbitrary
    int clock_min, clock_max, clock,
        frame_min, frame_max;
    FUNC4(&clock_min, &clock_max, &clock);
    frame_min = clock / clock_max;
    frame_max = clock / clock_min;
    double rate_d = FUNC0(rate_value);
    if (rate_d >= frame_min && rate_d <= frame_max)
    {
        // Value is a framerate, return clockrate
        return (int)(clock / rate_d);
    }
    else if (rate_d >= clock_min && rate_d <= clock_max)
    {
        // Value is already a clockrate
        return (int)(rate_d);
    }

    // Value out of bounds
    return -1;
}
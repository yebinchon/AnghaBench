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
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static hb_dict_t * FUNC7(const char *preset,
                                              const char *tune,
                                              const char *custom)
{
    hb_dict_t * settings;

    if (preset == NULL)
        return NULL;

    if (!FUNC6(preset, "custom"))
    {
        return FUNC3(custom);
    }
    if (!FUNC6(preset, "ultralight") ||
        !FUNC6(preset, "light") ||
        !FUNC6(preset, "medium") ||
        !FUNC6(preset, "strong") ||
        !FUNC6(preset, "stronger") ||
        !FUNC6(preset, "verystrong"))
    {
        double strength[2];
        const char *kernel_string[2];

        if (tune == NULL || !FUNC6(tune, "none"))
        {
            strength[0]      = strength[1]      = 0.2;
            kernel_string[0] = kernel_string[1] = "isolap";
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0]  = strength[1] = 0.05;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0]  = strength[1] = 0.1;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0]  = strength[1] = 0.3;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0]  = strength[1] = 0.5;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0]  = strength[1] = 1.1;
            }
        }
        else if (!FUNC6(tune, "film"))
        {
            strength[0]      = 0.2;  strength[1] = 0.12;
            kernel_string[0] = kernel_string[1]  = "isolap";
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0]  = 0.05; strength[1] = 0.03;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0]  = 0.1;  strength[1] = 0.06;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0]  = 0.3;  strength[1] = 0.2;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0]  = 0.5;  strength[1] = 0.3;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0]  = 1.1;  strength[1] = 0.65;
            }
        }
        else if (!FUNC6(tune, "grain"))
        {
            strength[0]      = 0.2; strength[1] = 0.1;
            kernel_string[0] = kernel_string[1] = "isolog";
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0] = 0.05; strength[1] = 0.025;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0] = 0.1;  strength[1] = 0.05;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0] = 0.3;  strength[1] = 0.15;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0] = 0.5;  strength[1] = 0.25;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0] = 1.1;  strength[1] = 0.55;
            }
        }
        else if (!FUNC6(tune, "animation"))
        {
            strength[0]      = 0.15; strength[1]   = 0.09;
            kernel_string[0] = kernel_string[1]    = "isolap";
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0]  = 0.0375; strength[1] = 0.0225;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0]  = 0.075;  strength[1] = 0.05625;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0]  = 0.225;  strength[1] = 0.15;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0]  = 0.375;  strength[1] = 0.225;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0]  = 0.75;  strength[1] = 0.45;
            }
        }
        else if (!FUNC6(tune, "sprite"))
        {
            strength[0]      = strength[1]      = 0.15;
            kernel_string[0] = kernel_string[1] = "lap";
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0]  = strength[1]      = 0.0375;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0]  = strength[1]      = 0.075;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0]  = strength[1]      = 0.225;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0]  = strength[1]      = 0.375;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0]  = strength[1]      = 0.75;
            }
        }
        else
        {
            FUNC0(stderr, "Unrecognized lapsharp tune (%s).\n", tune);
            return NULL;
        }

        settings = FUNC1();
        FUNC2(settings, "y-strength", FUNC4(strength[0]));
        FUNC2(settings, "y-kernel",   FUNC5(kernel_string[0]));

        FUNC2(settings, "cb-strength", FUNC4(strength[1]));
        FUNC2(settings, "cb-kernel",   FUNC5(kernel_string[1]));
    }
    else
    {
        settings = FUNC3(preset);
        if (tune != NULL)
        {
            FUNC0(stderr, "Custom lapsharp parameters specified; ignoring lapsharp tune (%s).\n", tune);
        }
    }

    return settings;
}
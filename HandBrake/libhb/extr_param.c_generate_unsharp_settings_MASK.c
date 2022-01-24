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
 int /*<<< orphan*/  FUNC5 (int) ; 
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
        int    size[2];

        if (tune == NULL || !FUNC6(tune, "none"))
        {
            strength[0]     = strength[1] = 0.25;
            size[0]         =     size[1] = 7;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0] = strength[1] = 0.05;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0] = strength[1] = 0.15;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0] = strength[1] = 0.5;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0] = strength[1] = 0.8;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0] = strength[1] = 1.2;
            }
        }
        else if (!FUNC6(tune, "ultrafine"))
        {
            strength[0]     = 0.4; strength[1] = 0.25;
            size[0]         =      size[1]     = 3;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0] = 0.15; strength[1] = 0.1;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0] = 0.25; strength[1] = 0.15;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0] = 0.8;  strength[1] = 0.5;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0] = 1.2;  strength[1] = 0.75;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0] = 1.5;  strength[1] = 0.9;
            }
        }
        else if (!FUNC6(tune, "fine"))
        {
            strength[0]     = 0.275; strength[1] = 0.165;
            size[0]         = 7;     size[1]     = 5;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0] = 0.055; strength[1] = 0.033;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0] = 0.165; strength[1] = 0.1;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0] = 0.55;  strength[1] = 0.33;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0] = 0.9;   strength[1] = 0.6;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0] = 1.35;   strength[1] = 0.9;
            }
        }
        else if (!FUNC6(tune, "medium"))
        {
            strength[0]     = 0.275; strength[1] = 0.165;
            size[0]         = 9;     size[1]     = 7;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0] = 0.055; strength[1] = 0.033;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0] = 0.165; strength[1] = 0.1;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0] = 0.55;  strength[1] = 0.33;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0] = 0.9;   strength[1] = 0.6;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0] = 1.35;   strength[1] = 0.9;
            }
        }
        else if (!FUNC6(tune, "coarse"))
        {
            strength[0]     = 0.275; strength[1] = 0.165;
            size[0]         = 11;    size[1]     = 7;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0] = 0.055; strength[1] = 0.033;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0] = 0.165; strength[1] = 0.1;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0] = 0.55;  strength[1] = 0.33;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0] = 0.9;   strength[1] = 0.6;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0] = 1.35;   strength[1] = 0.9;
            }
        }
        else if (!FUNC6(tune, "verycoarse"))
        {
            strength[0]     = 0.275; strength[1] = 0.165;
            size[0]         = 13;    size[1]     = 9;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0] = 0.055; strength[1] = 0.033;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0] = 0.165; strength[1] = 0.1;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0] = 0.55;  strength[1] = 0.33;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength[0] = 0.9;   strength[1] = 0.6;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength[0] = 1.35;   strength[1] = 0.9;
            }
        }
        else
        {
            FUNC0(stderr, "Unrecognized unsharp tune (%s).\n", tune);
            return NULL;
        }

        settings = FUNC1();
        FUNC2(settings, "y-strength", FUNC4(strength[0]));
        FUNC2(settings, "y-size",     FUNC5(size[0]));

        FUNC2(settings, "cb-strength", FUNC4(strength[1]));
        FUNC2(settings, "cb-size",     FUNC5(size[1]));
    }
    else
    {
        settings = FUNC3(preset);
        if (tune != NULL)
        {
            FUNC0(stderr, "Custom unsharp parameters specified; ignoring unsharp tune (%s).\n", tune);
        }
    }

    return settings;
}
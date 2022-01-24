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
        double strength;
        int    size;

        // Strength
        if ((tune == NULL || !FUNC6(tune, "none")) ||
           (!FUNC6(tune, "tiny"))   ||
           (!FUNC6(tune, "small"))  ||
           (!FUNC6(tune, "medium")) ||
           (!FUNC6(tune, "wide"))   ||
           (!FUNC6(tune, "verywide")))
        {
            strength = 1.2;
            if (!FUNC6(preset, "ultralight"))
            {
                strength = 0.4;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength = 0.8;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength = 1.6;
            }
            else if (!FUNC6(preset, "stronger"))
            {
                strength = 2.0;
            }
            else if (!FUNC6(preset, "verystrong"))
            {
                strength = 2.4;
            }
        }
        else
        {
            FUNC0(stderr, "Unrecognized chroma smooth tune (%s).\n", tune);
            return NULL;
        }

        // Size
        if (tune == NULL || tune[0] == 0 ||
            !FUNC6(tune, "none") || !FUNC6(tune, "medium"))
        {
            size = 7;
        }
        else if (!FUNC6(tune, "tiny"))
        {
            size = 3;
        }
        else if (!FUNC6(tune, "small"))
        {
            size = 5;
        }
        else if (!FUNC6(tune, "wide"))
        {
            size = 9;
        }
        else if (!FUNC6(tune, "verywide"))
        {
            size = 11;
        }
        else
        {
            FUNC0(stderr, "Unrecognized chroma smooth tune (%s).\n", tune);
            return NULL;
        }

        settings = FUNC1();
        FUNC2(settings, "cb-strength", FUNC4(strength));
        FUNC2(settings, "cb-size",     FUNC5(size));
    }
    else
    {
        settings = FUNC3(preset);
        if (tune != NULL)
        {
            FUNC0(stderr, "Custom chroma smooth parameters specified; ignoring chroma smooth tune (%s).\n", tune);
        }
    }

    return settings;
}
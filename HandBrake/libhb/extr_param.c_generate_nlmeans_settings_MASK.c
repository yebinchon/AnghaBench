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
        !FUNC6(preset, "strong"))
    {
        double strength[2],
               origin_tune[2];
        int    patch_size[2],
               range[2],
               frames[2],
               prefilter[2];

        if (tune == NULL || !FUNC6(tune, "none"))
        {
            strength[0]    = strength[1]    = 6;
            origin_tune[0] = origin_tune[1] = 1;
            patch_size[0]  = patch_size[1]  = 7;
            range[0]       = range[1]       = 3;
            frames[0]      = frames[1]      = 2;
            prefilter[0]   = prefilter[1]   = 0;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0] = strength[1] = 1.5;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0] = strength[1] = 3;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0] = strength[1] = 10;
            }
        }
        else if (!FUNC6(tune, "film"))
        {
            strength[0]    = 6; strength[1] = 8;
            origin_tune[0] = origin_tune[1] = 0.8;
            patch_size[0]  = patch_size[1]  = 7;
            range[0]       = range[1]       = 3;
            frames[0]      = frames[1]      = 2;
            prefilter[0]   = prefilter[1]   = 0;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0]    = 1.5;   strength[1]  = 2.4;
                origin_tune[0] = 0.9; origin_tune[1] = 0.9;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0]    = 3;   strength[1]    = 4;
                origin_tune[0] = 0.9; origin_tune[1] = 0.9;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0]    = 8;   strength[1]    = 10;
                origin_tune[0] = 0.6; origin_tune[1] = 0.6;
            }
        }
        else if (!FUNC6(tune, "grain"))
        {
            strength[0]    = 0; strength[1] = 6;
            origin_tune[0] = origin_tune[1] = 0.8;
            patch_size[0]  = patch_size[1]  = 7;
            range[0]       = range[1]       = 3;
            frames[0]      = frames[1]      = 2;
            prefilter[0]   = prefilter[1]   = 0;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0]    = 0;   strength[1]    = 2.4;
                origin_tune[0] = 0.9; origin_tune[1] = 0.9;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0]    = 0;   strength[1]    = 3.5;
                origin_tune[0] = 0.9; origin_tune[1] = 0.9;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0]    = 0;   strength[1]    = 8;
                origin_tune[0] = 0.6; origin_tune[1] = 0.6;
            }
        }
        else if (!FUNC6(tune, "highmotion"))
        {
            strength[0]    = 6;   strength[1]    = 6;
            origin_tune[0] = 0.8; origin_tune[1] = 0.7;
            patch_size[0]  = 7;   patch_size[1]  = 7;
            range[0]       = 3;   range[1]       = 5;
            frames[0]      = 2;   frames[1]      = 1;
            prefilter[0]   = 0;   prefilter[1]   = 0;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0]    = 1.5;   strength[1]  = 2.4;
                origin_tune[0] = 0.9; origin_tune[1] = 0.9;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0]    = 3;   strength[1]    = 3.25;
                origin_tune[0] = 0.9; origin_tune[1] = 0.8;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0]    = 8;   strength[1]    = 6.75;
                origin_tune[0] = 0.6; origin_tune[1] = 0.5;
            }
        }
        else if (!FUNC6(tune, "animation"))
        {
            strength[0]    = 5; strength[1] = 4;
            origin_tune[0] = origin_tune[1] = 0.15;
            patch_size[0]  = patch_size[1]  = 5;
            range[0]       = range[1]       = 7;
            frames[0]      = frames[1]      = 4;
            prefilter[0]   = prefilter[1]   = 0;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0] = 2.5; strength[1] = 2;
                frames[0]   = 2;   frames[1]   = 2;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0] = 3; strength[1] = 2.25;
                frames[0]   = 3; frames[1]   = 3;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0] = 10; strength[1] = 8;
            }
        }
        else if (!FUNC6(tune, "tape"))
        {
            strength[0]    = 3;   strength[1]    = 6;
            origin_tune[0] = 0.8; origin_tune[1] = 0.8;
            patch_size[0]  = 3;   patch_size[1]  = 5;
            range[0]       = 5;   range[1]       = 5;
            frames[0]      = 2;   frames[1]      = 2;
            prefilter[0]   = 0;   prefilter[1]   = 0;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0]    = 1.5; strength[1]    = 5;
                origin_tune[0] = 0.9; origin_tune[1] = 0.9;
                frames[0]      = 1;   frames[1]      = 1;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0]    = 2;   strength[1]    = 6;
                origin_tune[0] = 0.9; origin_tune[1] = 0.9;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0]    = 3.5; strength[1]    = 8;
                origin_tune[0] = 0.6; origin_tune[1] = 0.6;
                patch_size[0]  = 5;   patch_size[1]  = 5;
            }
        }
        else if (!FUNC6(tune, "sprite"))
        {
            strength[0]    = 3;    strength[1]    = 4;
            origin_tune[0] = 0.15; origin_tune[1] = 0.5;
            patch_size[0]  = 5;    patch_size[1]  = 5;
            range[0]       = 5;    range[1]       = 9;
            frames[0]      = 2;    frames[1]      = 4;
            prefilter[0]   = 0;    prefilter[1]   = 0;
            if (!FUNC6(preset, "ultralight"))
            {
                strength[0]    = 1.5; strength[1]    = 3;
                range[0]       = 5;   range[1]       = 7;
                frames[0]      = 1;   frames[1]      = 2;
            }
            else if (!FUNC6(preset, "light"))
            {
                strength[0]    = 2; strength[1]    = 4;
                frames[0]      = 2; frames[1]      = 2;
            }
            else if (!FUNC6(preset, "strong"))
            {
                strength[0]    = 3; strength[1]    = 4;
                range[0]       = 7; range[1]       = 11;
            }
        }
        else
        {
            FUNC0(stderr, "Unrecognized nlmeans tune (%s).\n", tune);
            return NULL;
        }

        settings = FUNC1();
        FUNC2(settings, "y-strength",   FUNC4(strength[0]));
        FUNC2(settings, "y-origin-tune", FUNC4(origin_tune[0]));
        FUNC2(settings, "y-patch-size",  FUNC5(patch_size[0]));
        FUNC2(settings, "y-range",      FUNC5(range[0]));
        FUNC2(settings, "y-frame-count", FUNC5(frames[0]));
        FUNC2(settings, "y-prefilter",  FUNC5(prefilter[0]));

        FUNC2(settings, "cb-strength",   FUNC4(strength[1]));
        FUNC2(settings, "cb-origin-tune", FUNC4(origin_tune[1]));
        FUNC2(settings, "cb-patch-size",  FUNC5(patch_size[1]));
        FUNC2(settings, "cb-range",      FUNC5(range[1]));
        FUNC2(settings, "cb-frame-count", FUNC5(frames[1]));
        FUNC2(settings, "cb-prefilter",  FUNC5(prefilter[1]));
    }
    else
    {
        settings = FUNC3(preset);
        if (tune != NULL)
        {
            FUNC0(stderr, "Custom nlmeans parameters specified; ignoring nlmeans tune (%s).\n", tune);
        }
    }

    return settings;
}
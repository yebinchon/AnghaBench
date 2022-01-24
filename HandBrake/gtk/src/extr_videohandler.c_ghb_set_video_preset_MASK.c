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
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 char** FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const* const) ; 

int FUNC4(GhbValue *settings, int encoder, const char * preset)
{
    const char * const * videoPresets;
    int                  ii, result = 0;

    videoPresets = FUNC2(encoder);
    for (ii = 0; videoPresets && videoPresets[ii]; ii++)
    {
        if (preset != NULL && !FUNC3(preset, videoPresets[ii]))
        {
            FUNC0(settings, "VideoPresetSlider", ii);
            result = 1;
            break;
        }
    }
    if (preset == NULL && videoPresets != NULL)
    {
        // Pick the center 'medium' preset
        ii = ii / 2;
        preset = videoPresets[ii];
        FUNC0(settings, "VideoPresetSlider", ii);
        result = 1;
    }
    if (preset != NULL)
    {
        FUNC1(settings, "VideoPreset", preset);
    }
    return result;
}
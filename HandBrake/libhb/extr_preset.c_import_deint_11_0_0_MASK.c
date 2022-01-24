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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int*,int*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static void FUNC8(hb_value_t *preset)
{
    hb_value_t *val = FUNC1(preset, "PictureDeinterlaceFilter");
    if (val == NULL)
    {
        return;
    }
    const char * deint = FUNC4(val);
    if (deint == NULL)
    {
        // This really shouldn't happen for a valid preset
        return;
    }
    if (FUNC7(deint, "deinterlace"))
    {
        return;
    }
    val = FUNC1(preset, "PictureDeinterlacePreset");
    if (val == NULL)
    {
        FUNC2(preset, "PictureDeinterlacePreset",
                    FUNC5("default"));
        return;
    }
    deint = FUNC4(val);
    if (deint == NULL)
    {
        // This really shouldn't happen for a valid preset
        return;
    }
    if (!FUNC7(deint, "fast") || !FUNC7(deint, "slow"))
    {
        // fast and slow -> skip-spatial
        FUNC2(preset, "PictureDeinterlacePreset",
                    FUNC5("skip-spatial"));
        return;
    }
    else if (!FUNC7(deint, "bob") || !FUNC7(deint, "default"))
    {
        return;
    }
    else if (FUNC7(deint, "custom"))
    {
        // not custom -> default
        FUNC2(preset, "PictureDeinterlacePreset",
                    FUNC5("default"));
        return;
    }
    val = FUNC1(preset, "PictureDeinterlaceCustom");
    if (val == NULL)
    {
        FUNC2(preset, "PictureDeinterlacePreset",
                    FUNC5("default"));
        return;
    }
    // Translate custom values
    deint = FUNC4(val);
    if (deint == NULL)
    {
        // This really shouldn't happen for a valid preset
        return;
    }
    int bob, spatial, yadif, mode = 3, parity = -1;
    FUNC6(deint, "%d:%d", &mode, &parity);
    yadif   = !!(mode & 1);
    spatial = !!(mode & 2);
    bob     = !!(mode & 8);
    mode = yadif + (yadif && spatial) * 2 + bob * 4;
    char * custom = FUNC3("%d:%d", mode, parity);
    FUNC2(preset, "PictureDeinterlaceCustom", FUNC5(custom));
    FUNC0(custom);
}
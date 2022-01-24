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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static void FUNC6(hb_value_t *preset)
{
    hb_value_t *val = FUNC0(preset, "PictureDecombDeinterlace");
    if (val != NULL)
    {
        int decomb_or_deint = FUNC2(val);
        const char * deint_preset;
        if (decomb_or_deint)
        {
            deint_preset = FUNC3(
                                FUNC0(preset, "PictureDecomb"));
        }
        else
        {
            deint_preset = FUNC3(
                                FUNC0(preset, "PictureDeinterlace"));
        }
        if (deint_preset != NULL && FUNC5(deint_preset, "off"))
        {
            FUNC1(preset, "PictureDeinterlaceFilter",
                        decomb_or_deint ? FUNC4("decomb")
                                        : FUNC4("deinterlace"));
            FUNC1(preset, "PictureDeinterlacePreset",
                        FUNC4(deint_preset));
        }
        else
        {
            FUNC1(preset, "PictureDeinterlaceFilter",
                        FUNC4("off"));
            FUNC1(preset, "PictureDeinterlacePreset",
                        FUNC4("default"));
        }
    }
}
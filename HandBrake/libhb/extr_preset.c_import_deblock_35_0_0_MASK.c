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
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC3(hb_value_t *preset)
{
    int deblock = FUNC0(preset, "PictureDeblock");

    if (deblock < 5)
    {
        FUNC2(preset, "PictureDeblockPreset", "off");
    }
    else if (deblock < 7)
    {
        FUNC2(preset, "PictureDeblockPreset", "medium");
    }
    else
    {
        FUNC2(preset, "PictureDeblockPreset", "strong");
    }
    FUNC2(preset, "PictureDeblockTune", "medium");
    FUNC2(preset, "PictureDeblockCustom",
                       "strength=strong:thresh=20");
    FUNC1(preset, "PictureDeblock");
}
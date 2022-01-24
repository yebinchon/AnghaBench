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
 int /*<<< orphan*/  HB_FILTER_DECOMB ; 
 int /*<<< orphan*/  HB_FILTER_DEINTERLACE ; 
 int /*<<< orphan*/  HB_FILTER_DETELECINE ; 
 int /*<<< orphan*/  HB_FILTER_HQDN3D ; 
 int /*<<< orphan*/  HB_FILTER_NLMEANS ; 
 int /*<<< orphan*/  HB_FILTER_ROTATE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static void FUNC4(hb_value_t *preset)
{
    hb_value_t *val = FUNC0(preset, "PictureDeinterlaceFilter");
    if (val != NULL)
    {
        const char * str = FUNC1(val);
        if (str != NULL)
        {
            if (FUNC3(str, "deinterlace"))
            {
                FUNC2(preset, HB_FILTER_DEINTERLACE,
                                     "PictureDeinterlaceCustom");
            }
            else if (FUNC3(str, "decomb"))
            {
                FUNC2(preset, HB_FILTER_DECOMB,
                                     "PictureDeinterlaceCustom");
            }
        }
    }
    val = FUNC0(preset, "PictureDenoiseFilter");
    if (val != NULL)
    {
        const char * str = FUNC1(val);
        if (str != NULL)
        {
            if (FUNC3(str, "hqdn3d"))
            {
                FUNC2(preset, HB_FILTER_HQDN3D,
                                     "PictureDenoiseCustom");
            }
            else if (FUNC3(str, "nlmeans"))
            {
                FUNC2(preset, HB_FILTER_NLMEANS,
                                     "PictureDenoiseCustom");
            }
        }
    }
    FUNC2(preset, HB_FILTER_DETELECINE,
                         "PictureDetelecineCustom");
    FUNC2(preset, HB_FILTER_ROTATE,
                         "PictureRotate");
}
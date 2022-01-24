#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  selective ;
typedef  int /*<<< orphan*/  hb_list_t ;
struct TYPE_7__ {int width; int height; } ;
typedef  TYPE_1__ hb_geometry_t ;
struct TYPE_8__ {int /*<<< orphan*/ * settings; } ;
typedef  TYPE_2__ hb_filter_object_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int HB_FILTER_COMB_DETECT ; 
 int HB_FILTER_CROP_SCALE ; 
 int HB_FILTER_DECOMB ; 
 int HB_FILTER_DEINTERLACE ; 
 int HB_FILTER_DETELECINE ; 
 int HB_FILTER_VFR ; 
 int MODE_DECOMB_SELECTIVE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(hb_list_t *list, hb_geometry_t src_geo)
{
    // Add selective deinterlacing mode if comb detection is enabled
    if (FUNC3(list, HB_FILTER_COMB_DETECT) != NULL)
    {
        int selective[] = {HB_FILTER_DECOMB, HB_FILTER_DEINTERLACE};
        int ii, count = sizeof(selective) / sizeof(int);

        for (ii = 0; ii < count; ii++)
        {
            hb_filter_object_t * filter = FUNC3(list, selective[ii]);
            if (filter != NULL)
            {
                int mode = FUNC0(filter->settings, "mode");
                mode |= MODE_DECOMB_SELECTIVE;
                FUNC1(filter->settings, "mode", FUNC6(mode));
                break;
            }
        }
    }

    int is_detel = 0;
    hb_filter_object_t * filter = FUNC3(list, HB_FILTER_DETELECINE);
    if (filter != NULL)
    {
        is_detel = 1;
    }

    filter = FUNC3(list, HB_FILTER_VFR);
    if (filter != NULL)
    {
        int mode = FUNC0(filter->settings, "mode");
        // "Same as source" FPS and no HB_FILTER_DETELECINE
        if ( (mode == 0) && (is_detel == 0) )
        {
            FUNC4(list, filter);
            FUNC2(&filter);
            FUNC5("Skipping vfr filter");
        }
    }

    filter = FUNC3(list, HB_FILTER_CROP_SCALE);
    if (filter != NULL)
    {
        hb_dict_t* settings = filter->settings;
        if (settings != NULL)
        {
            int width, height, top, bottom, left, right;
            width = FUNC0(settings, "width");
            height = FUNC0(settings, "height");
            top = FUNC0(settings, "crop-top");
            bottom = FUNC0(settings, "crop-bottom");
            left = FUNC0(settings, "crop-left");
            right = FUNC0(settings, "crop-right");

            if ( (src_geo.width == width) && (src_geo.height == height) &&
                (top == 0) && (bottom == 0 ) && (left == 0) && (right == 0) )
            {
                FUNC4(list, filter);
                FUNC2(&filter);
                FUNC5("Skipping crop/scale filter");
            }
        }
    }
}
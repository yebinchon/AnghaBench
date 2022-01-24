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
#define  HB_FILTER_CHROMA_SMOOTH 144 
#define  HB_FILTER_COMB_DETECT 143 
#define  HB_FILTER_CROP_SCALE 142 
#define  HB_FILTER_DEBLOCK 141 
#define  HB_FILTER_DECOMB 140 
#define  HB_FILTER_DEINTERLACE 139 
#define  HB_FILTER_DETELECINE 138 
#define  HB_FILTER_GRAYSCALE 137 
#define  HB_FILTER_HQDN3D 136 
#define  HB_FILTER_LAPSHARP 135 
#define  HB_FILTER_NLMEANS 134 
#define  HB_FILTER_PAD 133 
#define  HB_FILTER_QSV 132 
#define  HB_FILTER_RENDER_SUB 131 
#define  HB_FILTER_ROTATE 130 
#define  HB_FILTER_UNSHARP 129 
#define  HB_FILTER_VFR 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int,char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 

hb_value_t *
FUNC10(int filter_id, const char *preset, const char *tune,
                            const char *custom)
{
    hb_value_t * settings = NULL;

    switch (filter_id)
    {
        case HB_FILTER_PAD:
        case HB_FILTER_ROTATE:
        case HB_FILTER_CROP_SCALE:
        case HB_FILTER_VFR:
        case HB_FILTER_RENDER_SUB:
        case HB_FILTER_GRAYSCALE:
        case HB_FILTER_QSV:
            settings = FUNC7(custom);
            break;
        case HB_FILTER_NLMEANS:
            settings = FUNC5(preset, tune, custom);
            break;
        case HB_FILTER_CHROMA_SMOOTH:
            settings = FUNC2(preset, tune, custom);
            break;
        case HB_FILTER_LAPSHARP:
            settings = FUNC4(preset, tune, custom);
            break;
        case HB_FILTER_UNSHARP:
            settings = FUNC6(preset, tune, custom);
            break;
        case HB_FILTER_DEBLOCK:
        case HB_FILTER_COMB_DETECT:
        case HB_FILTER_DECOMB:
        case HB_FILTER_DETELECINE:
        case HB_FILTER_HQDN3D:
        case HB_FILTER_DEINTERLACE:
            settings = FUNC3(filter_id, preset,
                                                 tune, custom);
            break;
        default:
            FUNC1(stderr,
                    "hb_generate_filter_settings: Unrecognized filter (%d).\n",
                    filter_id);
            break;
    }
    FUNC0(filter_id, settings);

    if (settings != NULL &&
        FUNC8(filter_id, settings) == 0)
    {
        return settings;
    }
    FUNC9(&settings);
    return NULL;
}
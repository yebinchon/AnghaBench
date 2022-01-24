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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* CHROMA_SMOOTH_DEFAULT_PRESET ; 
 char* COMB_DETECT_DEFAULT_PRESET ; 
 char* DEBLOCK_DEFAULT_PRESET ; 
 char* DECOMB_DEFAULT_PRESET ; 
 char* DEINTERLACE_DEFAULT_PRESET ; 
 char* DETELECINE_DEFAULT_PRESET ; 
#define  HB_FILTER_CHROMA_SMOOTH 138 
#define  HB_FILTER_COMB_DETECT 137 
#define  HB_FILTER_DEBLOCK 136 
#define  HB_FILTER_DECOMB 135 
#define  HB_FILTER_DEINTERLACE 134 
#define  HB_FILTER_DETELECINE 133 
#define  HB_FILTER_HQDN3D 132 
#define  HB_FILTER_LAPSHARP 131 
#define  HB_FILTER_NLMEANS 130 
#define  HB_FILTER_ROTATE 129 
#define  HB_FILTER_UNSHARP 128 
 char* HQDN3D_DEFAULT_PRESET ; 
 char* LAPSHARP_DEFAULT_PRESET ; 
 char* NLMEANS_DEFAULT_PRESET ; 
 char* ROTATE_DEFAULT ; 
 char* UNSHARP_DEFAULT_PRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 char** FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(FILE* const out, int filter_id)
{
    const char * preset = "default";

    FUNC0(out, "                           Default:\n"
                 "                               ");
    switch (filter_id)
    {
        case HB_FILTER_UNSHARP:
            preset = UNSHARP_DEFAULT_PRESET;
            break;
        case HB_FILTER_LAPSHARP:
            preset = LAPSHARP_DEFAULT_PRESET;
            break;
        case HB_FILTER_CHROMA_SMOOTH:
            preset = CHROMA_SMOOTH_DEFAULT_PRESET;
            break;
        case HB_FILTER_NLMEANS:
            preset = NLMEANS_DEFAULT_PRESET;
            break;
        case HB_FILTER_DEINTERLACE:
            preset = DEINTERLACE_DEFAULT_PRESET;
            break;
        case HB_FILTER_DECOMB:
            preset = DECOMB_DEFAULT_PRESET;
            break;
        case HB_FILTER_DETELECINE:
            preset = DETELECINE_DEFAULT_PRESET;
            break;
        case HB_FILTER_HQDN3D:
            preset = HQDN3D_DEFAULT_PRESET;
            break;
        case HB_FILTER_COMB_DETECT:
            preset = COMB_DETECT_DEFAULT_PRESET;
            break;
        case HB_FILTER_DEBLOCK:
            preset = DEBLOCK_DEFAULT_PRESET;
            break;
        default:
            break;
    }
    switch (filter_id)
    {
        case HB_FILTER_DEINTERLACE:
        case HB_FILTER_NLMEANS:
        case HB_FILTER_CHROMA_SMOOTH:
        case HB_FILTER_UNSHARP:
        case HB_FILTER_LAPSHARP:
        case HB_FILTER_DECOMB:
        case HB_FILTER_DETELECINE:
        case HB_FILTER_HQDN3D:
        case HB_FILTER_COMB_DETECT:
        case HB_FILTER_DEBLOCK:
        {
            hb_dict_t * settings;
            settings = FUNC3(filter_id, preset,
                                                   NULL, NULL);
            char * str = FUNC2(filter_id, settings);
            FUNC6(&settings);

            char ** split = FUNC5(str, ':');
            char  * colon = "", * newline;
            int     ii, linelen = 0;

            for (ii = 0; split[ii] != NULL; ii++)
            {
                int len = FUNC7(split[ii]) + 1;
                if (linelen + len > 48)
                {
                    newline = "\n                               ";
                    linelen = 0;
                }
                else
                {
                    newline = "";
                }
                FUNC0(out, "%s%s%s", colon, newline, split[ii]);
                linelen += len;
                colon = ":";
            }
            FUNC4(split);
            FUNC1(str);
        } break;
        case HB_FILTER_ROTATE:
            FUNC0(out, "%s", ROTATE_DEFAULT);
            break;
        default:
            break;
    }
    FUNC0(out, "\n");
}
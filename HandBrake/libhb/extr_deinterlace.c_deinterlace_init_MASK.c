#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hb_filter_private_s {int dummy; } ;
struct TYPE_5__ {void* output; int /*<<< orphan*/ * avfilters; void* input; } ;
typedef  TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {int /*<<< orphan*/ * settings; TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_filter_object_t ;
typedef  void* hb_filter_init_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int MODE_DECOMB_SELECTIVE ; 
 int MODE_YADIF_BOB ; 
 int MODE_YADIF_ENABLE ; 
 int MODE_YADIF_SPATIAL ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(hb_filter_object_t * filter,
                            hb_filter_init_t * init)
{
    hb_filter_private_t * pv = NULL;

    pv = FUNC0(1, sizeof(struct hb_filter_private_s));
    filter->private_data = pv;
    if (pv == NULL)
    {
        return 1;
    }
    pv->input = *init;

    hb_dict_t        * settings = filter->settings;

    int          mode = 3, parity = -1;

    FUNC1(&mode, settings, "mode");
    FUNC1(&parity, settings, "parity");

    if (!(mode & MODE_YADIF_ENABLE))
    {
        return 0;
    }

    hb_dict_t * avfilter = FUNC2();
    hb_dict_t * avsettings = FUNC2();

    if (mode & MODE_YADIF_BOB)
    {
        if (mode & MODE_YADIF_SPATIAL)
        {
            FUNC3(avsettings, "mode", FUNC4("send_field"));
        }
        else
        {
            FUNC3(avsettings, "mode",
                        FUNC4("send_field_nospatial"));
        }
    }
    else
    {
        if (mode & MODE_YADIF_SPATIAL)
        {
            FUNC3(avsettings, "mode", FUNC4("send_frame"));
        }
        else
        {
            FUNC3(avsettings, "mode",
                        FUNC4("send_frame_nospatial"));
        }
    }

    if (mode & MODE_DECOMB_SELECTIVE)
    {
        FUNC3(avsettings, "deint", FUNC4("interlaced"));
    }
    if (parity == 0)
    {
        FUNC3(avsettings, "parity", FUNC4("tff"));
    }
    else if (parity == 1)
    {
        FUNC3(avsettings, "parity", FUNC4("bff"));
    }
    FUNC3(avfilter, "yadif", avsettings);
    pv->avfilters = avfilter;

    pv->output = *init;

    return 0;
}
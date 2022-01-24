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
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC5(hb_filter_object_t * filter, hb_filter_init_t * init)
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

    char * format = NULL, * range = NULL;
    char * primaries = NULL, * transfer = NULL, * matrix = NULL;

    FUNC1(&format, settings, "format");
    FUNC1(&range, settings, "range");
    FUNC1(&primaries, settings, "primaries");
    FUNC1(&transfer, settings, "transfer");
    FUNC1(&matrix, settings, "matrix");

    if (!(format || range || primaries || transfer || matrix))
    {
        return 0;
    }

    hb_dict_t * avfilter   = FUNC2();
    hb_dict_t * avsettings = FUNC2();

    if (format)
    {
        FUNC4(avsettings, "format", format);
    }
    if (range)
    {
        FUNC4(avsettings, "range", range);
    }
    if (primaries)
    {
        FUNC4(avsettings, "primaries", primaries);
    }
    if (transfer)
    {
        FUNC4(avsettings, "trc", transfer);
    }
    if (matrix)
    {
        FUNC4(avsettings, "space", matrix);
    }
    FUNC3(avfilter, "colorspace", avsettings);
    pv->avfilters = avfilter;

    pv->output = *init;

    return 0;
}
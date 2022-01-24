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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC9(hb_filter_object_t * filter, hb_filter_init_t * init)
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

    int      thresh   = -1, blocksize = 8;
    char  *  strength = NULL;

    FUNC3(&strength, settings, "strength");
    FUNC2(&thresh, settings, "thresh");
    FUNC2(&blocksize, settings, "blocksize");

    hb_dict_t * avfilter = FUNC4();
    hb_dict_t * avsettings = FUNC4();

    if (strength != NULL)
    {
        FUNC8(avsettings, "filter", strength);
        FUNC1(strength);
    }
    FUNC7(avsettings, "block", blocksize);

    if (thresh > 0)
    {
        double alpha, beta, gamma, delta;

        alpha = thresh * 0.010;
        beta  = gamma = delta = alpha / 2;
        FUNC6(avsettings, "alpha", alpha);
        FUNC6(avsettings, "beta", beta);
        FUNC6(avsettings, "gamma", gamma);
        FUNC6(avsettings, "delta", delta);
    }
    FUNC5(avfilter, "deblock", avsettings);
    pv->avfilters = avfilter;

    pv->output = *init;

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int segment; TYPE_6__* out; TYPE_5__* pv; } ;
typedef  TYPE_4__ nlmeans_thread_arg_t ;
struct TYPE_11__ {int /*<<< orphan*/  color_range; int /*<<< orphan*/  color_matrix; int /*<<< orphan*/  color_transfer; int /*<<< orphan*/  color_prim; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_14__ {int* prefilter; scalar_t__* strength; int /*<<< orphan*/  taskset; TYPE_7__* frame; int /*<<< orphan*/ * diff_max; int /*<<< orphan*/ * weight_fact_table; int /*<<< orphan*/ * exptable; int /*<<< orphan*/ * range; int /*<<< orphan*/ * patch_size; int /*<<< orphan*/ * origin_tune; int /*<<< orphan*/ * nframes; int /*<<< orphan*/  functions; TYPE_2__ output; } ;
typedef  TYPE_5__ hb_filter_private_t ;
struct TYPE_10__ {int /*<<< orphan*/  color_range; int /*<<< orphan*/  color_matrix; int /*<<< orphan*/  color_transfer; int /*<<< orphan*/  color_prim; } ;
struct TYPE_15__ {int /*<<< orphan*/  s; TYPE_3__* plane; TYPE_1__ f; } ;
typedef  TYPE_6__ hb_buffer_t ;
struct TYPE_16__ {int /*<<< orphan*/  s; int /*<<< orphan*/ * plane; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  stride; int /*<<< orphan*/  width; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  NLMeansFunctions ;
typedef  TYPE_7__ Frame ;

/* Variables and functions */
 int NLMEANS_PREFILTER_MODE_PASSTHRU ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_7__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(void *thread_args_v)
{
    nlmeans_thread_arg_t *thread_data = thread_args_v;
    hb_filter_private_t *pv = thread_data->pv;
    int segment = thread_data->segment;

    FUNC0(3, "NLMeans thread started for segment %d", segment);

    while (1)
    {
        // Wait until there is work to do.
        FUNC7(&pv->taskset, segment);

        if (FUNC6(&pv->taskset, segment))
        {
            break;
        }

        Frame *frame = &pv->frame[segment];
        hb_buffer_t *buf;
        buf = FUNC1(pv->output.pix_fmt,
                                   frame->width, frame->height);
        buf->f.color_prim     = pv->output.color_prim;
        buf->f.color_transfer = pv->output.color_transfer;
        buf->f.color_matrix   = pv->output.color_matrix;
        buf->f.color_range    = pv->output.color_range ;


        NLMeansFunctions *functions = &pv->functions;

        for (int c = 0; c < 3; c++)
        {
            if (pv->prefilter[c] & NLMEANS_PREFILTER_MODE_PASSTHRU)
            {
                FUNC4(&frame->plane[c], pv->prefilter[c]);
                FUNC2(&frame->plane[c], buf->plane[c].data,
                                 buf->plane[c].width, buf->plane[c].stride,
                                 buf->plane[c].height);
                continue;
            }
            if (pv->strength[c] == 0)
            {
                FUNC2(&frame->plane[c], buf->plane[c].data,
                                 buf->plane[c].width, buf->plane[c].stride,
                                 buf->plane[c].height);
                continue;
            }

            // Process current plane
            FUNC3(functions,
                          frame,
                          pv->prefilter[c],
                          c,
                          pv->nframes[c],
                          buf->plane[c].data,
                          buf->plane[c].width,
                          buf->plane[c].stride,
                          buf->plane[c].height,
                          pv->strength[c],
                          pv->origin_tune[c],
                          pv->patch_size[c],
                          pv->range[c],
                          pv->exptable[c],
                          pv->weight_fact_table[c],
                          pv->diff_max[c]);
        }
        buf->s = pv->frame[segment].s;
        thread_data->out = buf;

        // Finished this segment, notify.
        FUNC5(&pv->taskset, segment);
    }
    FUNC5(&pv->taskset, segment);
}
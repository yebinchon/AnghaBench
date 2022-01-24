#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ nb_outputs; TYPE_2__** inputs; TYPE_1__** outputs; TYPE_3__* priv; } ;
struct TYPE_8__ {unsigned int* nb_streams; unsigned int nb_segments; } ;
struct TYPE_7__ {int /*<<< orphan*/  out_channel_layouts; int /*<<< orphan*/  out_samplerates; int /*<<< orphan*/  out_formats; } ;
struct TYPE_6__ {int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  in_samplerates; int /*<<< orphan*/  in_formats; } ;
typedef  TYPE_3__ ConcatContext ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_4__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 unsigned int AVMEDIA_TYPE_AUDIO ; 
 unsigned int TYPE_ALL ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx)
{
    ConcatContext *cat = ctx->priv;
    unsigned type, nb_str, idx0 = 0, idx, str, seg;
    AVFilterFormats *formats, *rates = NULL;
    AVFilterChannelLayouts *layouts = NULL;
    int ret;

    for (type = 0; type < TYPE_ALL; type++) {
        nb_str = cat->nb_streams[type];
        for (str = 0; str < nb_str; str++) {
            idx = idx0;

            /* Set the output formats */
            formats = FUNC1(type);
            if ((ret = FUNC4(formats, &ctx->outputs[idx]->in_formats)) < 0)
                return ret;

            if (type == AVMEDIA_TYPE_AUDIO) {
                rates = FUNC2();
                if ((ret = FUNC4(rates, &ctx->outputs[idx]->in_samplerates)) < 0)
                    return ret;
                layouts = FUNC0();
                if ((ret = FUNC3(layouts, &ctx->outputs[idx]->in_channel_layouts)) < 0)
                    return ret;
            }

            /* Set the same formats for each corresponding input */
            for (seg = 0; seg < cat->nb_segments; seg++) {
                if ((ret = FUNC4(formats, &ctx->inputs[idx]->out_formats)) < 0)
                    return ret;
                if (type == AVMEDIA_TYPE_AUDIO) {
                    if ((ret = FUNC4(rates, &ctx->inputs[idx]->out_samplerates)) < 0 ||
                        (ret = FUNC3(layouts, &ctx->inputs[idx]->out_channel_layouts)) < 0)
                        return ret;
                }
                idx += ctx->nb_outputs;
            }

            idx0++;
        }
    }
    return 0;
}
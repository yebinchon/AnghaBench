
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nb_outputs; TYPE_2__** inputs; TYPE_1__** outputs; TYPE_3__* priv; } ;
struct TYPE_8__ {unsigned int* nb_streams; unsigned int nb_segments; } ;
struct TYPE_7__ {int out_channel_layouts; int out_samplerates; int out_formats; } ;
struct TYPE_6__ {int in_channel_layouts; int in_samplerates; int in_formats; } ;
typedef TYPE_3__ ConcatContext ;
typedef int AVFilterFormats ;
typedef TYPE_4__ AVFilterContext ;
typedef int AVFilterChannelLayouts ;


 unsigned int AVMEDIA_TYPE_AUDIO ;
 unsigned int TYPE_ALL ;
 int * ff_all_channel_layouts () ;
 int * ff_all_formats (unsigned int) ;
 int * ff_all_samplerates () ;
 int ff_channel_layouts_ref (int *,int *) ;
 int ff_formats_ref (int *,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    ConcatContext *cat = ctx->priv;
    unsigned type, nb_str, idx0 = 0, idx, str, seg;
    AVFilterFormats *formats, *rates = ((void*)0);
    AVFilterChannelLayouts *layouts = ((void*)0);
    int ret;

    for (type = 0; type < TYPE_ALL; type++) {
        nb_str = cat->nb_streams[type];
        for (str = 0; str < nb_str; str++) {
            idx = idx0;


            formats = ff_all_formats(type);
            if ((ret = ff_formats_ref(formats, &ctx->outputs[idx]->in_formats)) < 0)
                return ret;

            if (type == AVMEDIA_TYPE_AUDIO) {
                rates = ff_all_samplerates();
                if ((ret = ff_formats_ref(rates, &ctx->outputs[idx]->in_samplerates)) < 0)
                    return ret;
                layouts = ff_all_channel_layouts();
                if ((ret = ff_channel_layouts_ref(layouts, &ctx->outputs[idx]->in_channel_layouts)) < 0)
                    return ret;
            }


            for (seg = 0; seg < cat->nb_segments; seg++) {
                if ((ret = ff_formats_ref(formats, &ctx->inputs[idx]->out_formats)) < 0)
                    return ret;
                if (type == AVMEDIA_TYPE_AUDIO) {
                    if ((ret = ff_formats_ref(rates, &ctx->inputs[idx]->out_samplerates)) < 0 ||
                        (ret = ff_channel_layouts_ref(layouts, &ctx->inputs[idx]->out_channel_layouts)) < 0)
                        return ret;
                }
                idx += ctx->nb_outputs;
            }

            idx0++;
        }
    }
    return 0;
}

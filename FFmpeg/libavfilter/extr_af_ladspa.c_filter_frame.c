
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int * outputs; TYPE_2__* priv; } ;
struct TYPE_19__ {TYPE_5__* dst; } ;
struct TYPE_18__ {int channels; int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_17__ {int nb_inputs; int nb_handles; int nb_outputs; int nb_outputcontrols; int octlv; int ocmap; int * handles; TYPE_1__* desc; int * opmap; int * ipmap; } ;
struct TYPE_16__ {int Properties; int (* run ) (int ,int ) ;int (* connect_port ) (int ,int ,int *) ;} ;
typedef int LADSPA_Data ;
typedef TYPE_2__ LADSPAContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_VERBOSE ;
 int ENOMEM ;
 int LADSPA_PROPERTY_INPLACE_BROKEN ;
 int av_assert0 (int) ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 scalar_t__ av_frame_is_writable (TYPE_3__*) ;
 int ff_filter_frame (int ,TYPE_3__*) ;
 TYPE_3__* ff_get_audio_buffer (int ,int ) ;
 int print_ctl_info (TYPE_5__*,int ,TYPE_2__*,int,int ,int ,int) ;
 int stub1 (int ,int ,int *) ;
 int stub2 (int ,int ,int *) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    LADSPAContext *s = ctx->priv;
    AVFrame *out;
    int i, h, p;

    av_assert0(in->channels == (s->nb_inputs * s->nb_handles));

    if (!s->nb_outputs ||
        (av_frame_is_writable(in) && s->nb_inputs == s->nb_outputs &&
        !(s->desc->Properties & LADSPA_PROPERTY_INPLACE_BROKEN))) {
        out = in;
    } else {
        out = ff_get_audio_buffer(ctx->outputs[0], in->nb_samples);
        if (!out) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }
        av_frame_copy_props(out, in);
    }

    av_assert0(!s->nb_outputs || out->channels == (s->nb_outputs * s->nb_handles));

    for (h = 0; h < s->nb_handles; h++) {
        for (i = 0; i < s->nb_inputs; i++) {
            p = s->nb_handles > 1 ? h : i;
            s->desc->connect_port(s->handles[h], s->ipmap[i],
                                  (LADSPA_Data*)in->extended_data[p]);
        }

        for (i = 0; i < s->nb_outputs; i++) {
            p = s->nb_handles > 1 ? h : i;
            s->desc->connect_port(s->handles[h], s->opmap[i],
                                  (LADSPA_Data*)out->extended_data[p]);
        }

        s->desc->run(s->handles[h], in->nb_samples);
    }

    for (i = 0; i < s->nb_outputcontrols; i++)
        print_ctl_info(ctx, AV_LOG_VERBOSE, s, i, s->ocmap, s->octlv, 1);

    if (out != in)
        av_frame_free(&in);

    return ff_filter_frame(ctx->outputs[0], out);
}

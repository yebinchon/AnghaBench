
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {TYPE_1__* dst; } ;
struct TYPE_19__ {int nb_samples; int * extended_data; } ;
struct TYPE_18__ {int bs2bp; int (* filter ) (int ,int ,int ) ;} ;
struct TYPE_17__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ Bs2bContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy (TYPE_3__*,TYPE_3__*) ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 scalar_t__ av_frame_is_writable (TYPE_3__*) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_audio_buffer (TYPE_4__*,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    int ret;
    AVFrame *out_frame;

    Bs2bContext *bs2b = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];

    if (av_frame_is_writable(frame)) {
        out_frame = frame;
    } else {
        out_frame = ff_get_audio_buffer(outlink, frame->nb_samples);
        if (!out_frame) {
            av_frame_free(&frame);
            return AVERROR(ENOMEM);
        }
        av_frame_copy(out_frame, frame);
        ret = av_frame_copy_props(out_frame, frame);
        if (ret < 0) {
            av_frame_free(&out_frame);
            av_frame_free(&frame);
            return ret;
        }
    }

    bs2b->filter(bs2b->bs2bp, out_frame->extended_data[0], out_frame->nb_samples);

    if (frame != out_frame)
        av_frame_free(&frame);

    return ff_filter_frame(outlink, out_frame);
}

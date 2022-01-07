
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int type; int frame_rate; int time_base; int channel_layout; int hw_frames_ctx; int sample_aspect_ratio; int h; int w; TYPE_1__* src; } ;
struct TYPE_6__ {int frame_rate; int time_base; int channel_layout; int hw_frames_ctx; int pixel_aspect; int h; int w; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_2__ BufferSourceContext ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR (int ) ;


 int EINVAL ;
 int ENOMEM ;
 int av_buffer_ref (int ) ;

__attribute__((used)) static int config_props(AVFilterLink *link)
{
    BufferSourceContext *c = link->src->priv;

    switch (link->type) {
    case 128:
        link->w = c->w;
        link->h = c->h;
        link->sample_aspect_ratio = c->pixel_aspect;

        if (c->hw_frames_ctx) {
            link->hw_frames_ctx = av_buffer_ref(c->hw_frames_ctx);
            if (!link->hw_frames_ctx)
                return AVERROR(ENOMEM);
        }
        break;
    case 129:
        if (!c->channel_layout)
            c->channel_layout = link->channel_layout;
        break;
    default:
        return AVERROR(EINVAL);
    }

    link->time_base = c->time_base;
    link->frame_rate = c->frame_rate;
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int shuffled_linesize ;
typedef int shuffled_data ;
struct TYPE_17__ {int * outputs; TYPE_1__* priv; } ;
struct TYPE_16__ {TYPE_4__* dst; } ;
struct TYPE_15__ {int* linesize; int height; int width; int ** data; } ;
struct TYPE_14__ {int planes; size_t* map; scalar_t__ copy; } ;
typedef TYPE_1__ ShufflePlanesContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy (TYPE_2__*,TYPE_2__*) ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_filter_frame (int ,TYPE_2__*) ;
 TYPE_2__* ff_get_video_buffer (int ,int ,int ) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int shuffleplanes_filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    ShufflePlanesContext *s = ctx->priv;
    uint8_t *shuffled_data[4] = { ((void*)0) };
    int shuffled_linesize[4] = { 0 };
    int i, ret;

    for (i = 0; i < s->planes; i++) {
        shuffled_data[i] = frame->data[s->map[i]];
        shuffled_linesize[i] = frame->linesize[s->map[i]];
    }
    memcpy(frame->data, shuffled_data, sizeof(shuffled_data));
    memcpy(frame->linesize, shuffled_linesize, sizeof(shuffled_linesize));

    if (s->copy) {
        AVFrame *copy = ff_get_video_buffer(ctx->outputs[0], frame->width, frame->height);

        if (!copy) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }

        av_frame_copy(copy, frame);

        ret = av_frame_copy_props(copy, frame);
        if (ret < 0) {
            av_frame_free(&copy);
            goto fail;
        }

        av_frame_free(&frame);
        frame = copy;
    }

    return ff_filter_frame(ctx->outputs[0], frame);
fail:
    av_frame_free(&frame);
    return ret;
}

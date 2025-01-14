
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_18__ {int den; int num; } ;
struct TYPE_20__ {scalar_t__ start_time; int* pattern; size_t pattern_pos; int occupied; int nb_planes; int first_field; int* planeheight; TYPE_1__ ts_unit; TYPE_11__** frame; int * stride; TYPE_2__* temp; } ;
typedef TYPE_3__ TelecineContext ;
struct TYPE_23__ {TYPE_3__* priv; TYPE_5__** outputs; } ;
struct TYPE_22__ {int frame_count_in; TYPE_6__* dst; } ;
struct TYPE_21__ {scalar_t__ pts; int* linesize; scalar_t__* data; } ;
struct TYPE_19__ {int* linesize; scalar_t__* data; } ;
struct TYPE_17__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_NOPTS_VALUE ;
 int ENOMEM ;
 TYPE_4__* av_frame_clone (TYPE_11__*) ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int av_frame_free (TYPE_4__**) ;
 int av_frame_make_writable (TYPE_11__*) ;
 int av_image_copy_plane (scalar_t__,int,scalar_t__,int,int ,int) ;
 scalar_t__ av_rescale (int ,int ,int ) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *inpicref)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    TelecineContext *s = ctx->priv;
    int i, len, ret = 0, nout = 0;

    if (s->start_time == AV_NOPTS_VALUE)
        s->start_time = inpicref->pts;

    len = s->pattern[s->pattern_pos] - '0';

    s->pattern_pos++;
    if (!s->pattern[s->pattern_pos])
        s->pattern_pos = 0;

    if (!len) {
        av_frame_free(&inpicref);
        return 0;
    }

    if (s->occupied) {
        av_frame_make_writable(s->frame[nout]);
        for (i = 0; i < s->nb_planes; i++) {

            av_image_copy_plane(s->frame[nout]->data[i] + s->frame[nout]->linesize[i] * s->first_field,
                                s->frame[nout]->linesize[i] * 2,
                                s->temp->data[i] + s->temp->linesize[i] * s->first_field,
                                s->temp->linesize[i] * 2,
                                s->stride[i],
                                (s->planeheight[i] - s->first_field + 1) / 2);

            av_image_copy_plane(s->frame[nout]->data[i] + s->frame[nout]->linesize[i] * !s->first_field,
                                s->frame[nout]->linesize[i] * 2,
                                inpicref->data[i] + inpicref->linesize[i] * !s->first_field,
                                inpicref->linesize[i] * 2,
                                s->stride[i],
                                (s->planeheight[i] - !s->first_field + 1) / 2);
        }
        nout++;
        len--;
        s->occupied = 0;
    }

    while (len >= 2) {

        av_frame_make_writable(s->frame[nout]);
        for (i = 0; i < s->nb_planes; i++)
            av_image_copy_plane(s->frame[nout]->data[i], s->frame[nout]->linesize[i],
                                inpicref->data[i], inpicref->linesize[i],
                                s->stride[i],
                                s->planeheight[i]);
        nout++;
        len -= 2;
    }

    if (len >= 1) {

        for (i = 0; i < s->nb_planes; i++)
            av_image_copy_plane(s->temp->data[i], s->temp->linesize[i],
                                inpicref->data[i], inpicref->linesize[i],
                                s->stride[i],
                                s->planeheight[i]);
        s->occupied = 1;
    }

    for (i = 0; i < nout; i++) {
        AVFrame *frame = av_frame_clone(s->frame[i]);

        if (!frame) {
            av_frame_free(&inpicref);
            return AVERROR(ENOMEM);
        }

        av_frame_copy_props(frame, inpicref);
        frame->pts = ((s->start_time == AV_NOPTS_VALUE) ? 0 : s->start_time) +
                     av_rescale(outlink->frame_count_in, s->ts_unit.num,
                                s->ts_unit.den);
        ret = ff_filter_frame(outlink, frame);
    }
    av_frame_free(&inpicref);

    return ret;
}

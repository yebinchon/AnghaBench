
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef int int32_t ;
struct TYPE_23__ {TYPE_4__** outputs; TYPE_1__* priv; } ;
struct TYPE_22__ {int h; int w; } ;
struct TYPE_21__ {int top_field_first; int * linesize; int * data; scalar_t__ interlaced_frame; } ;
struct TYPE_20__ {int* padded_width; int* padded_height; int* field; void* temp; void* input; int * lcount; int * dst_stride; int * dstp; scalar_t__* paddedp; int * padded_stride; } ;
struct TYPE_19__ {int field; int nb_planes; int* planeheight; int* linesize; int process_plane; int (* evalfunc_1 ) (TYPE_1__*,TYPE_2__*) ;int (* evalfunc_0 ) (TYPE_1__*,TYPE_2__*) ;int (* copy_pad ) (TYPE_3__*,TYPE_2__*,TYPE_1__*,int) ;TYPE_14__* dst; TYPE_2__ frame_data; TYPE_3__* src; } ;
struct TYPE_18__ {int * linesize; int * data; scalar_t__ interlaced_frame; } ;
typedef TYPE_1__ NNEDIContext ;
typedef TYPE_2__ FrameData ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 size_t FFMAX (int const,int) ;
 int av_calloc (int,int) ;
 int av_frame_copy_props (TYPE_14__*,TYPE_3__*) ;
 int av_image_copy_plane (int ,int ,int ,int ,int,int) ;
 void* av_malloc (size_t) ;
 scalar_t__ av_malloc_array (int ,int) ;
 TYPE_14__* ff_get_video_buffer (TYPE_4__*,int ,int ) ;
 int memset (int ,int ,int) ;
 int modnpf (int const,int const) ;
 int stub1 (TYPE_3__*,TYPE_2__*,TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;
 int stub3 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int get_frame(AVFilterContext *ctx, int is_second)
{
    NNEDIContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *src = s->src;
    FrameData *frame_data;
    int effective_field = s->field;
    size_t temp_size;
    int field_n;
    int plane;

    if (effective_field > 1)
        effective_field -= 2;
    else if (effective_field < 0)
        effective_field += 2;

    if (s->field < 0 && src->interlaced_frame && src->top_field_first == 0)
        effective_field = 0;
    else if (s->field < 0 && src->interlaced_frame && src->top_field_first == 1)
        effective_field = 1;
    else
        effective_field = !effective_field;

    if (s->field > 1 || s->field == -2) {
        if (is_second) {
            field_n = (effective_field == 0);
        } else {
            field_n = (effective_field == 1);
        }
    } else {
        field_n = effective_field;
    }

    s->dst = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!s->dst)
        return AVERROR(ENOMEM);
    av_frame_copy_props(s->dst, src);
    s->dst->interlaced_frame = 0;

    frame_data = &s->frame_data;

    for (plane = 0; plane < s->nb_planes; plane++) {
        int dst_height = s->planeheight[plane];
        int dst_width = s->linesize[plane];

        const int min_alignment = 16;
        const int min_pad = 10;

        if (!(s->process_plane & (1 << plane))) {
            av_image_copy_plane(s->dst->data[plane], s->dst->linesize[plane],
                                src->data[plane], src->linesize[plane],
                                s->linesize[plane],
                                s->planeheight[plane]);
            continue;
        }

        frame_data->padded_width[plane] = dst_width + 64;
        frame_data->padded_height[plane] = dst_height + 12;
        frame_data->padded_stride[plane] = modnpf(frame_data->padded_width[plane] + min_pad, min_alignment);
        if (!frame_data->paddedp[plane]) {
            frame_data->paddedp[plane] = av_malloc_array(frame_data->padded_stride[plane], frame_data->padded_height[plane]);
            if (!frame_data->paddedp[plane])
                return AVERROR(ENOMEM);
        }

        frame_data->dstp[plane] = s->dst->data[plane];
        frame_data->dst_stride[plane] = s->dst->linesize[plane];

        if (!frame_data->lcount[plane]) {
            frame_data->lcount[plane] = av_calloc(dst_height, sizeof(int32_t) * 16);
            if (!frame_data->lcount[plane])
                return AVERROR(ENOMEM);
        } else {
            memset(frame_data->lcount[plane], 0, dst_height * sizeof(int32_t) * 16);
        }

        frame_data->field[plane] = field_n;
    }

    if (!frame_data->input) {
        frame_data->input = av_malloc(512 * sizeof(float));
        if (!frame_data->input)
            return AVERROR(ENOMEM);
    }


    if (!frame_data->temp) {
        temp_size = FFMAX(frame_data->padded_width[0], 512 * sizeof(float));
        frame_data->temp = av_malloc(temp_size);
        if (!frame_data->temp)
            return AVERROR(ENOMEM);
    }


    s->copy_pad(src, frame_data, s, field_n);


    s->evalfunc_0(s, frame_data);


    s->evalfunc_1(s, frame_data);

    return 0;
}

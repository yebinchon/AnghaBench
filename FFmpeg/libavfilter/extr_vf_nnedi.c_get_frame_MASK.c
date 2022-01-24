#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_23__ {TYPE_4__** outputs; TYPE_1__* priv; } ;
struct TYPE_22__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_21__ {int top_field_first; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; scalar_t__ interlaced_frame; } ;
struct TYPE_20__ {int* padded_width; int* padded_height; int* field; void* temp; void* input; int /*<<< orphan*/ * lcount; int /*<<< orphan*/ * dst_stride; int /*<<< orphan*/ * dstp; scalar_t__* paddedp; int /*<<< orphan*/ * padded_stride; } ;
struct TYPE_19__ {int field; int nb_planes; int* planeheight; int* linesize; int process_plane; int /*<<< orphan*/  (* evalfunc_1 ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  (* evalfunc_0 ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  (* copy_pad ) (TYPE_3__*,TYPE_2__*,TYPE_1__*,int) ;TYPE_14__* dst; TYPE_2__ frame_data; TYPE_3__* src; } ;
struct TYPE_18__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; scalar_t__ interlaced_frame; } ;
typedef  TYPE_1__ NNEDIContext ;
typedef  TYPE_2__ FrameData ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t FUNC1 (int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_14__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_14__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int const,int const) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC13(AVFilterContext *ctx, int is_second)
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

    s->dst = FUNC7(outlink, outlink->w, outlink->h);
    if (!s->dst)
        return FUNC0(ENOMEM);
    FUNC3(s->dst, src);
    s->dst->interlaced_frame = 0;

    frame_data = &s->frame_data;

    for (plane = 0; plane < s->nb_planes; plane++) {
        int dst_height = s->planeheight[plane];
        int dst_width = s->linesize[plane];

        const int min_alignment = 16;
        const int min_pad = 10;

        if (!(s->process_plane & (1 << plane))) {
            FUNC4(s->dst->data[plane], s->dst->linesize[plane],
                                src->data[plane], src->linesize[plane],
                                s->linesize[plane],
                                s->planeheight[plane]);
            continue;
        }

        frame_data->padded_width[plane]  = dst_width + 64;
        frame_data->padded_height[plane] = dst_height + 12;
        frame_data->padded_stride[plane] = FUNC9(frame_data->padded_width[plane] + min_pad, min_alignment); // TODO: maybe min_pad is in pixels too?
        if (!frame_data->paddedp[plane]) {
            frame_data->paddedp[plane] = FUNC6(frame_data->padded_stride[plane], frame_data->padded_height[plane]);
            if (!frame_data->paddedp[plane])
                return FUNC0(ENOMEM);
        }

        frame_data->dstp[plane] = s->dst->data[plane];
        frame_data->dst_stride[plane] = s->dst->linesize[plane];

        if (!frame_data->lcount[plane]) {
            frame_data->lcount[plane] = FUNC2(dst_height, sizeof(int32_t) * 16);
            if (!frame_data->lcount[plane])
                return FUNC0(ENOMEM);
        } else {
            FUNC8(frame_data->lcount[plane], 0, dst_height * sizeof(int32_t) * 16);
        }

        frame_data->field[plane] = field_n;
    }

    if (!frame_data->input) {
        frame_data->input = FUNC5(512 * sizeof(float));
        if (!frame_data->input)
            return FUNC0(ENOMEM);
    }
    // evalfunc_0 requires at least padded_width[0] bytes.
    // evalfunc_1 requires at least 512 floats.
    if (!frame_data->temp) {
        temp_size = FUNC1(frame_data->padded_width[0], 512 * sizeof(float));
        frame_data->temp = FUNC5(temp_size);
        if (!frame_data->temp)
            return FUNC0(ENOMEM);
    }

    // Copy src to a padded "frame" in frame_data and mirror the edges.
    s->copy_pad(src, frame_data, s, field_n);

    // Handles prescreening and the cubic interpolation.
    s->evalfunc_0(s, frame_data);

    // The rest.
    s->evalfunc_1(s, frame_data);

    return 0;
}
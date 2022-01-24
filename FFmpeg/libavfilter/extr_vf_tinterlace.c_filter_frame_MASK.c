#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_20__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_19__ {int frame_count_out; int /*<<< orphan*/  time_base; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  format; TYPE_4__* dst; } ;
struct TYPE_18__ {int interlaced_frame; int top_field_first; int pts; int /*<<< orphan*/  linesize; scalar_t__ data; void* sample_aspect_ratio; int /*<<< orphan*/  height; } ;
struct TYPE_17__ {int mode; int frame; int /*<<< orphan*/  preout_time_base; int /*<<< orphan*/  flags; TYPE_2__* next; int /*<<< orphan*/  black_linesize; scalar_t__ black_data; TYPE_2__* cur; } ;
typedef  TYPE_1__ TInterlaceContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FIELD_LOWER ; 
 int FIELD_UPPER ; 
 int FIELD_UPPER_AND_LOWER ; 
#define  MODE_DROP_EVEN 135 
#define  MODE_DROP_ODD 134 
#define  MODE_INTERLACEX2 133 
#define  MODE_INTERLEAVE_BOTTOM 132 
#define  MODE_INTERLEAVE_TOP 131 
#define  MODE_MERGE 130 
#define  MODE_MERGEX2 129 
#define  MODE_PAD 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 void* FUNC6 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFilterLink *inlink, AVFrame *picref)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    TInterlaceContext *tinterlace = ctx->priv;
    AVFrame *cur, *next, *out;
    int field, tff, ret;

    FUNC4(&tinterlace->cur);
    tinterlace->cur  = tinterlace->next;
    tinterlace->next = picref;

    cur = tinterlace->cur;
    next = tinterlace->next;
    /* we need at least two frames */
    if (!tinterlace->cur)
        return 0;

    switch (tinterlace->mode) {
    case MODE_MERGEX2: /* move the odd frame into the upper field of the new image, even into
                        * the lower field, generating a double-height video at same framerate */
    case MODE_MERGE: /* move the odd frame into the upper field of the new image, even into
             * the lower field, generating a double-height video at half framerate */
        out = FUNC10(outlink, outlink->w, outlink->h);
        if (!out)
            return FUNC0(ENOMEM);
        FUNC3(out, cur);
        out->height = outlink->h;
        out->interlaced_frame = 1;
        out->top_field_first = 1;
        out->sample_aspect_ratio = FUNC6(cur->sample_aspect_ratio, FUNC5(2, 1));

        /* write odd frame lines into the upper field of the new frame */
        FUNC8(tinterlace, out->data, out->linesize,
                           (const uint8_t **)cur->data, cur->linesize,
                           inlink->format, inlink->w, inlink->h,
                           FIELD_UPPER_AND_LOWER, 1, tinterlace->mode == MODE_MERGEX2 ? inlink->frame_count_out & 1 ? FIELD_LOWER : FIELD_UPPER : FIELD_UPPER, tinterlace->flags);
        /* write even frame lines into the lower field of the new frame */
        FUNC8(tinterlace, out->data, out->linesize,
                           (const uint8_t **)next->data, next->linesize,
                           inlink->format, inlink->w, inlink->h,
                           FIELD_UPPER_AND_LOWER, 1, tinterlace->mode == MODE_MERGEX2 ? inlink->frame_count_out & 1 ? FIELD_UPPER : FIELD_LOWER : FIELD_LOWER, tinterlace->flags);
        if (tinterlace->mode != MODE_MERGEX2)
            FUNC4(&tinterlace->next);
        break;

    case MODE_DROP_ODD:  /* only output even frames, odd  frames are dropped; height unchanged, half framerate */
    case MODE_DROP_EVEN: /* only output odd  frames, even frames are dropped; height unchanged, half framerate */
        out = FUNC2(tinterlace->mode == MODE_DROP_EVEN ? cur : next);
        if (!out)
            return FUNC0(ENOMEM);
        FUNC4(&tinterlace->next);
        break;

    case MODE_PAD: /* expand each frame to double height, but pad alternate
                    * lines with black; framerate unchanged */
        out = FUNC10(outlink, outlink->w, outlink->h);
        if (!out)
            return FUNC0(ENOMEM);
        FUNC3(out, cur);
        out->height = outlink->h;
        out->sample_aspect_ratio = FUNC6(cur->sample_aspect_ratio, FUNC5(2, 1));

        field = (1 + tinterlace->frame) & 1 ? FIELD_UPPER : FIELD_LOWER;
        /* copy upper and lower fields */
        FUNC8(tinterlace, out->data, out->linesize,
                           (const uint8_t **)cur->data, cur->linesize,
                           inlink->format, inlink->w, inlink->h,
                           FIELD_UPPER_AND_LOWER, 1, field, tinterlace->flags);
        /* pad with black the other field */
        FUNC8(tinterlace, out->data, out->linesize,
                           (const uint8_t **)tinterlace->black_data, tinterlace->black_linesize,
                           inlink->format, inlink->w, inlink->h,
                           FIELD_UPPER_AND_LOWER, 1, !field, tinterlace->flags);
        break;

        /* interleave upper/lower lines from odd frames with lower/upper lines from even frames,
         * halving the frame rate and preserving image height */
    case MODE_INTERLEAVE_TOP:    /* top    field first */
    case MODE_INTERLEAVE_BOTTOM: /* bottom field first */
        tff = tinterlace->mode == MODE_INTERLEAVE_TOP;
        out = FUNC10(outlink, outlink->w, outlink->h);
        if (!out)
            return FUNC0(ENOMEM);
        FUNC3(out, cur);
        out->interlaced_frame = 1;
        out->top_field_first = tff;

        /* copy upper/lower field from cur */
        FUNC8(tinterlace, out->data, out->linesize,
                           (const uint8_t **)cur->data, cur->linesize,
                           inlink->format, inlink->w, inlink->h,
                           tff ? FIELD_UPPER : FIELD_LOWER, 1, tff ? FIELD_UPPER : FIELD_LOWER,
                           tinterlace->flags);
        /* copy lower/upper field from next */
        FUNC8(tinterlace, out->data, out->linesize,
                           (const uint8_t **)next->data, next->linesize,
                           inlink->format, inlink->w, inlink->h,
                           tff ? FIELD_LOWER : FIELD_UPPER, 1, tff ? FIELD_LOWER : FIELD_UPPER,
                           tinterlace->flags);
        FUNC4(&tinterlace->next);
        break;
    case MODE_INTERLACEX2: /* re-interlace preserving image height, double frame rate */
        /* output current frame first */
        out = FUNC2(cur);
        if (!out)
            return FUNC0(ENOMEM);
        out->interlaced_frame = 1;
        if (cur->pts != AV_NOPTS_VALUE)
            out->pts = cur->pts*2;

        out->pts = FUNC7(out->pts, tinterlace->preout_time_base, outlink->time_base);
        if ((ret = FUNC9(outlink, out)) < 0)
            return ret;

        /* output mix of current and next frame */
        tff = next->top_field_first;
        out = FUNC10(outlink, outlink->w, outlink->h);
        if (!out)
            return FUNC0(ENOMEM);
        FUNC3(out, next);
        out->interlaced_frame = 1;
        out->top_field_first = !tff;

        if (next->pts != AV_NOPTS_VALUE && cur->pts != AV_NOPTS_VALUE)
            out->pts = cur->pts + next->pts;
        else
            out->pts = AV_NOPTS_VALUE;
        /* write current frame second field lines into the second field of the new frame */
        FUNC8(tinterlace, out->data, out->linesize,
                           (const uint8_t **)cur->data, cur->linesize,
                           inlink->format, inlink->w, inlink->h,
                           tff ? FIELD_LOWER : FIELD_UPPER, 1, tff ? FIELD_LOWER : FIELD_UPPER,
                           tinterlace->flags);
        /* write next frame first field lines into the first field of the new frame */
        FUNC8(tinterlace, out->data, out->linesize,
                           (const uint8_t **)next->data, next->linesize,
                           inlink->format, inlink->w, inlink->h,
                           tff ? FIELD_UPPER : FIELD_LOWER, 1, tff ? FIELD_UPPER : FIELD_LOWER,
                           tinterlace->flags);
        break;
    default:
        FUNC1(0);
    }

    out->pts = FUNC7(out->pts, tinterlace->preout_time_base, outlink->time_base);
    ret = FUNC9(outlink, out);
    tinterlace->frame++;

    return ret;
}
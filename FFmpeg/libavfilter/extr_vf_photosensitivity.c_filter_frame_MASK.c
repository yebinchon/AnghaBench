#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
struct TYPE_26__ {TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_25__ {TYPE_4__* dst; } ;
struct TYPE_24__ {int /*<<< orphan*/ * metadata; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_23__ {int nb_frames; int* history; int history_pos; int badness_threshold; TYPE_2__* last_frame_av; void* last_frame_e; int /*<<< orphan*/  skip; scalar_t__ bypass; } ;
typedef  void* PhotosensitivityFrame ;
typedef  TYPE_1__ PhotosensitivityContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_2__*,TYPE_2__*,float) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_2__*,void**,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (void**,void**) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,float) ; 

__attribute__((used)) static int FUNC13(AVFilterLink *inlink, AVFrame *in)
{
    int this_badness, current_badness, fixed_badness, new_badness, i, res;
    PhotosensitivityFrame ef;
    AVFrame *src, *out;
    int free_in = 0;
    float factor;
    AVDictionary **metadata;

    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    PhotosensitivityContext *s = ctx->priv;

    /* weighted moving average */
    current_badness = 0;
    for (i = 1; i < s->nb_frames; i++)
        current_badness += i * s->history[(s->history_pos + i) % s->nb_frames];
    current_badness /= s->nb_frames;

    FUNC8(ctx, in, &ef, s->skip);
    this_badness = FUNC11(&ef, &s->last_frame_e);
    new_badness = current_badness + this_badness;
    FUNC6(s, AV_LOG_VERBOSE, "badness: %6d -> %6d / %6d (%3d%% - %s)\n",
        current_badness, new_badness, s->badness_threshold,
        100 * new_badness / s->badness_threshold, new_badness < s->badness_threshold ? "OK" : "EXCEEDED");

    fixed_badness = new_badness;
    if (new_badness < s->badness_threshold || !s->last_frame_av || s->bypass) {
        factor = 1; /* for metadata */
        FUNC4(&s->last_frame_av);
        s->last_frame_av = src = in;
        s->last_frame_e = ef;
        s->history[s->history_pos] = this_badness;
    } else {
        factor = (float)(s->badness_threshold - current_badness) / (new_badness - current_badness);
        if (factor <= 0) {
            /* just duplicate the frame */
            s->history[s->history_pos] = 0; /* frame was duplicated, thus, delta is zero */
        } else {
            res = FUNC5(s->last_frame_av);
            if (res) {
                FUNC4(&in);
                return res;
            }
            FUNC7(ctx, s->last_frame_av, in, factor);

            FUNC8(ctx, s->last_frame_av, &ef, s->skip);
            this_badness = FUNC11(&ef, &s->last_frame_e);
            fixed_badness = current_badness + this_badness;
            FUNC6(s, AV_LOG_VERBOSE, "  fixed: %6d -> %6d / %6d (%3d%%) factor=%5.3f\n",
                current_badness, fixed_badness, s->badness_threshold,
                100 * new_badness / s->badness_threshold, factor);
            s->last_frame_e = ef;
            s->history[s->history_pos] = this_badness;
        }
        src = s->last_frame_av;
        free_in = 1;
    }
    s->history_pos = (s->history_pos + 1) % s->nb_frames;

    out = FUNC10(outlink, in->width, in->height);
    if (!out) {
        if (free_in == 1)
            FUNC4(&in);
        return FUNC0(ENOMEM);
    }
    FUNC3(out, in);
    metadata = &out->metadata;
    if (metadata) {
        char value[128];

        FUNC12(value, sizeof(value), "%f", (float)new_badness / s->badness_threshold);
        FUNC1(metadata, "lavfi.photosensitivity.badness", value, 0);

        FUNC12(value, sizeof(value), "%f", (float)fixed_badness / s->badness_threshold);
        FUNC1(metadata, "lavfi.photosensitivity.fixed-badness", value, 0);

        FUNC12(value, sizeof(value), "%f", (float)this_badness / s->badness_threshold);
        FUNC1(metadata, "lavfi.photosensitivity.frame-badness", value, 0);

        FUNC12(value, sizeof(value), "%f", factor);
        FUNC1(metadata, "lavfi.photosensitivity.factor", value, 0);
    }
    FUNC2(out, src);
    if (free_in == 1)
        FUNC4(&in);
    return FUNC9(outlink, out);
}
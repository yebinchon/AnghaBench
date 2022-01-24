#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_21__ {int nb_samples; scalar_t__* extended_data; int /*<<< orphan*/  pts; } ;
struct TYPE_20__ {int /*<<< orphan*/  format; } ;
struct TYPE_19__ {int nb_inputs; TYPE_5__** inputs; int /*<<< orphan*/ * outputs; TYPE_2__* priv; } ;
struct TYPE_18__ {scalar_t__* extended_data; int /*<<< orphan*/  pts; } ;
struct TYPE_17__ {int channels; int planes; TYPE_8__** frames; TYPE_1__* fdsp; int /*<<< orphan*/  samples_align; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* vector_dmul ) (double*,double const*,double const*,int) ;int /*<<< orphan*/  (* vector_fmul ) (float*,float const*,float const*,int) ;} ;
typedef  TYPE_2__ AudioMultiplyContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_SAMPLE_FMT_FLT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_5__*,int) ; 
 int FUNC12 (TYPE_5__*,int,int,TYPE_8__**) ; 
 scalar_t__ FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (float*,float const*,float const*,int) ; 
 int /*<<< orphan*/  FUNC18 (double*,double const*,double const*,int) ; 

__attribute__((used)) static int FUNC19(AVFilterContext *ctx)
{
    AudioMultiplyContext *s = ctx->priv;
    int i, ret, status;
    int nb_samples;
    int64_t pts;

    FUNC3(ctx->outputs[0], ctx);

    nb_samples = FUNC2(FUNC13(ctx->inputs[0]),
                       FUNC13(ctx->inputs[1]));
    for (i = 0; i < ctx->nb_inputs && nb_samples > 0; i++) {
        if (s->frames[i])
            continue;

        if (FUNC11(ctx->inputs[i], nb_samples) > 0) {
            ret = FUNC12(ctx->inputs[i], nb_samples, nb_samples, &s->frames[i]);
            if (ret < 0)
                return ret;
        }
    }

    if (s->frames[0] && s->frames[1]) {
        AVFrame *out;
        int plane_samples;

        if (FUNC6(ctx->inputs[0]->format))
            plane_samples = FUNC1(s->frames[0]->nb_samples, s->samples_align);
        else
            plane_samples = FUNC1(s->frames[0]->nb_samples * s->channels, s->samples_align);

        out = FUNC9(ctx->outputs[0], s->frames[0]->nb_samples);
        if (!out)
            return FUNC0(ENOMEM);

        out->pts = s->frames[0]->pts;

        if (FUNC5(ctx->inputs[0]->format) == AV_SAMPLE_FMT_FLT) {
            for (i = 0; i < s->planes; i++) {
                s->fdsp->vector_fmul((float *)out->extended_data[i],
                                     (const float *)s->frames[0]->extended_data[i],
                                     (const float *)s->frames[1]->extended_data[i],
                                     plane_samples);
            }
        } else {
            for (i = 0; i < s->planes; i++) {
                s->fdsp->vector_dmul((double *)out->extended_data[i],
                                     (const double *)s->frames[0]->extended_data[i],
                                     (const double *)s->frames[1]->extended_data[i],
                                     plane_samples);
            }
        }
        FUNC7();

        FUNC4(&s->frames[0]);
        FUNC4(&s->frames[1]);

        ret = FUNC8(ctx->outputs[0], out);
        if (ret < 0)
            return ret;
    }

    if (!nb_samples) {
        for (i = 0; i < 2; i++) {
            if (FUNC10(ctx->inputs[i], &status, &pts)) {
                FUNC16(ctx->outputs[0], status, pts);
                return 0;
            }
        }
    }

    if (FUNC15(ctx->outputs[0])) {
        for (i = 0; i < 2; i++) {
            if (FUNC13(ctx->inputs[i]) > 0)
                continue;
            FUNC14(ctx->inputs[i]);
            return 0;
        }
    }
    return 0;
}
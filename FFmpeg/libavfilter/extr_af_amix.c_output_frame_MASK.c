#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_2__* priv; } ;
struct TYPE_17__ {TYPE_5__* src; } ;
struct TYPE_16__ {scalar_t__ format; scalar_t__ pts; scalar_t__* extended_data; } ;
struct TYPE_15__ {int* input_state; int nb_inputs; scalar_t__ next_pts; int nb_channels; int /*<<< orphan*/ * input_scale; TYPE_1__* fdsp; scalar_t__ planar; int /*<<< orphan*/ * fifos; int /*<<< orphan*/  frame_list; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* vector_dmac_scalar ) (double*,double*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* vector_fmac_scalar ) (float*,float*,int /*<<< orphan*/ ,int) ;} ;
typedef  TYPE_2__ MixContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVERROR_EOF ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 scalar_t__ AV_SAMPLE_FMT_FLT ; 
 scalar_t__ AV_SAMPLE_FMT_FLTP ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int INPUT_EOF ; 
 int INPUT_ON ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (float*,float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (double*,double*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    MixContext      *s = ctx->priv;
    AVFrame *out_buf, *in_buf;
    int nb_samples, ns, i;

    if (s->input_state[0] & INPUT_ON) {
        /* first input live: use the corresponding frame size */
        nb_samples = FUNC10(s->frame_list);
        for (i = 1; i < s->nb_inputs; i++) {
            if (s->input_state[i] & INPUT_ON) {
                ns = FUNC4(s->fifos[i]);
                if (ns < nb_samples) {
                    if (!(s->input_state[i] & INPUT_EOF))
                        /* unclosed input with not enough samples */
                        return 0;
                    /* closed input to drain */
                    nb_samples = ns;
                }
            }
        }
    } else {
        /* first input closed: use the available samples */
        nb_samples = INT_MAX;
        for (i = 1; i < s->nb_inputs; i++) {
            if (s->input_state[i] & INPUT_ON) {
                ns = FUNC4(s->fifos[i]);
                nb_samples = FUNC2(nb_samples, ns);
            }
        }
        if (nb_samples == INT_MAX) {
            FUNC9(outlink, AVERROR_EOF, s->next_pts);
            return 0;
        }
    }

    s->next_pts = FUNC11(s->frame_list);
    FUNC12(s->frame_list, nb_samples);

    FUNC6(s, nb_samples);

    if (nb_samples == 0)
        return 0;

    out_buf = FUNC8(outlink, nb_samples);
    if (!out_buf)
        return FUNC0(ENOMEM);

    in_buf = FUNC8(outlink, nb_samples);
    if (!in_buf) {
        FUNC5(&out_buf);
        return FUNC0(ENOMEM);
    }

    for (i = 0; i < s->nb_inputs; i++) {
        if (s->input_state[i] & INPUT_ON) {
            int planes, plane_size, p;

            FUNC3(s->fifos[i], (void **)in_buf->extended_data,
                               nb_samples);

            planes     = s->planar ? s->nb_channels : 1;
            plane_size = nb_samples * (s->planar ? 1 : s->nb_channels);
            plane_size = FUNC1(plane_size, 16);

            if (out_buf->format == AV_SAMPLE_FMT_FLT ||
                out_buf->format == AV_SAMPLE_FMT_FLTP) {
                for (p = 0; p < planes; p++) {
                    s->fdsp->vector_fmac_scalar((float *)out_buf->extended_data[p],
                                                (float *) in_buf->extended_data[p],
                                                s->input_scale[i], plane_size);
                }
            } else {
                for (p = 0; p < planes; p++) {
                    s->fdsp->vector_dmac_scalar((double *)out_buf->extended_data[p],
                                                (double *) in_buf->extended_data[p],
                                                s->input_scale[i], plane_size);
                }
            }
        }
    }
    FUNC5(&in_buf);

    out_buf->pts = s->next_pts;
    if (s->next_pts != AV_NOPTS_VALUE)
        s->next_pts += nb_samples;

    return FUNC7(outlink, out_buf);
}
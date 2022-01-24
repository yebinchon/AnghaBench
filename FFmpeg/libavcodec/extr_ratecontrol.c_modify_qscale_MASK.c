#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {double rc_buffer_size; double const rc_min_rate; double const rc_max_rate; double const rc_min_vbv_overflow_use; int debug; double const rc_max_available_vbv_use; } ;
struct TYPE_12__ {double buffer_index; } ;
struct TYPE_13__ {int rc_qmod_freq; double rc_qmod_amp; double rc_buffer_aggressivity; double rc_qsquish; TYPE_7__* avctx; TYPE_2__ rc_context; } ;
struct TYPE_11__ {int new_pict_type; } ;
typedef  TYPE_1__ RateControlEntry ;
typedef  TYPE_2__ RateControlContext ;
typedef  TYPE_3__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int const AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  FUNC0 (double const,int) ; 
 int FF_DEBUG_RC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,char*,double,double) ; 
 double FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,double,double const,double const,double const,double const,double) ; 
 double FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,TYPE_3__*,int const) ; 
 double FUNC7 (double) ; 
 double FUNC8 (double,double) ; 

__attribute__((used)) static double FUNC9(MpegEncContext *s, RateControlEntry *rce,
                            double q, int frame_num)
{
    RateControlContext *rcc  = &s->rc_context;
    const double buffer_size = s->avctx->rc_buffer_size;
    const double fps         = FUNC5(s->avctx);
    const double min_rate    = s->avctx->rc_min_rate / fps;
    const double max_rate    = s->avctx->rc_max_rate / fps;
    const int pict_type      = rce->new_pict_type;
    int qmin, qmax;

    FUNC6(&qmin, &qmax, s, pict_type);

    /* modulation */
    if (s->rc_qmod_freq &&
        frame_num % s->rc_qmod_freq == 0 &&
        pict_type == AV_PICTURE_TYPE_P)
        q *= s->rc_qmod_amp;

    /* buffer overflow/underflow protection */
    if (buffer_size) {
        double expected_size = rcc->buffer_index;
        double q_limit;

        if (min_rate) {
            double d = 2 * (buffer_size - expected_size) / buffer_size;
            if (d > 1.0)
                d = 1.0;
            else if (d < 0.0001)
                d = 0.0001;
            q *= FUNC8(d, 1.0 / s->rc_buffer_aggressivity);

            q_limit = FUNC2(rce,
                              FUNC0((min_rate - buffer_size + rcc->buffer_index) *
                                    s->avctx->rc_min_vbv_overflow_use, 1));

            if (q > q_limit) {
                if (s->avctx->debug & FF_DEBUG_RC)
                    FUNC1(s->avctx, AV_LOG_DEBUG,
                           "limiting QP %f -> %f\n", q, q_limit);
                q = q_limit;
            }
        }

        if (max_rate) {
            double d = 2 * expected_size / buffer_size;
            if (d > 1.0)
                d = 1.0;
            else if (d < 0.0001)
                d = 0.0001;
            q /= FUNC8(d, 1.0 / s->rc_buffer_aggressivity);

            q_limit = FUNC2(rce,
                              FUNC0(rcc->buffer_index *
                                    s->avctx->rc_max_available_vbv_use,
                                    1));
            if (q < q_limit) {
                if (s->avctx->debug & FF_DEBUG_RC)
                    FUNC1(s->avctx, AV_LOG_DEBUG,
                           "limiting QP %f -> %f\n", q, q_limit);
                q = q_limit;
            }
        }
    }
    FUNC4(s, "q:%f max:%f min:%f size:%f index:%f agr:%f\n",
            q, max_rate, min_rate, buffer_size, rcc->buffer_index,
            s->rc_buffer_aggressivity);
    if (s->rc_qsquish == 0.0 || qmin == qmax) {
        if (q < qmin)
            q = qmin;
        else if (q > qmax)
            q = qmax;
    } else {
        double min2 = FUNC7(qmin);
        double max2 = FUNC7(qmax);

        q  = FUNC7(q);
        q  = (q - min2) / (max2 - min2) - 0.5;
        q *= -4.0;
        q  = 1.0 / (1.0 + FUNC3(q));
        q  = q * (max2 - min2) + min2;

        q = FUNC3(q);
    }

    return q;
}
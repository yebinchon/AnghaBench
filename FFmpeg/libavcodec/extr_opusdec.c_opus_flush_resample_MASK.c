#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int* out; int output_channels; int out_size; scalar_t__ redundancy_idx; scalar_t__* redundancy_output; int /*<<< orphan*/ * celt_output; TYPE_1__* fdsp; int /*<<< orphan*/  celt_delay; int /*<<< orphan*/  avctx; int /*<<< orphan*/  swr; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* vector_fmac_scalar ) (int,int /*<<< orphan*/ ,double,int) ;} ;
typedef  TYPE_2__ OpusStreamContext ;

/* Variables and functions */
 int AVERROR_BUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ff_celt_window2 ; 
 int /*<<< orphan*/  FUNC3 (int,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,double,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(OpusStreamContext *s, int nb_samples)
{
    int celt_size = FUNC1(s->celt_delay);
    int ret, i;
    ret = FUNC5(s->swr,
                      (uint8_t**)s->out, nb_samples,
                      NULL, 0);
    if (ret < 0)
        return ret;
    else if (ret != nb_samples) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Wrong number of flushed samples: %d\n",
               ret);
        return AVERROR_BUG;
    }

    if (celt_size) {
        if (celt_size != nb_samples) {
            FUNC2(s->avctx, AV_LOG_ERROR, "Wrong number of CELT delay samples.\n");
            return AVERROR_BUG;
        }
        FUNC0(s->celt_delay, (void**)s->celt_output, nb_samples);
        for (i = 0; i < s->output_channels; i++) {
            s->fdsp->vector_fmac_scalar(s->out[i],
                                        s->celt_output[i], 1.0,
                                        nb_samples);
        }
    }

    if (s->redundancy_idx) {
        for (i = 0; i < s->output_channels; i++)
            FUNC3(s->out[i], s->out[i],
                      s->redundancy_output[i] + 120 + s->redundancy_idx,
                      ff_celt_window2 + s->redundancy_idx, 120 - s->redundancy_idx);
        s->redundancy_idx = 0;
    }

    s->out[0]   += nb_samples;
    s->out[1]   += nb_samples;
    s->out_size -= nb_samples * sizeof(float);

    return 0;
}
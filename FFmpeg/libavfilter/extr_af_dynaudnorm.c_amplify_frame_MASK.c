#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_5__ {int channels; double* prev_amplification_factor; scalar_t__ peak_value; int /*<<< orphan*/  fade_factors; int /*<<< orphan*/ * gain_history_smoothed; } ;
typedef  TYPE_1__ DynamicAudioNormalizerContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 double FUNC0 (scalar_t__,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double*) ; 
 scalar_t__ FUNC2 (double) ; 
 double FUNC3 (double,double,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(DynamicAudioNormalizerContext *s, AVFrame *frame, int enabled)
{
    int c, i;

    for (c = 0; c < s->channels; c++) {
        double *dst_ptr = (double *)frame->extended_data[c];
        double current_amplification_factor;

        FUNC1(s->gain_history_smoothed[c], &current_amplification_factor);

        for (i = 0; i < frame->nb_samples && enabled; i++) {
            const double amplification_factor = FUNC3(s->prev_amplification_factor[c],
                                                     current_amplification_factor, i,
                                                     s->fade_factors);

            dst_ptr[i] *= amplification_factor;

            if (FUNC2(dst_ptr[i]) > s->peak_value)
                dst_ptr[i] = FUNC0(s->peak_value, dst_ptr[i]);
        }

        s->prev_amplification_factor[c] = current_amplification_factor;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  max_pitch_val; int /*<<< orphan*/  min_pitch_val; } ;
typedef  TYPE_1__ WMAVoiceContext ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int) ; 
 float FUNC2 (float const*,float const*,int) ; 

__attribute__((used)) static int FUNC3(WMAVoiceContext *s, int pitch,
                           const float *in, float *out, int size)
{
    int n;
    float optimal_gain = 0, dot;
    const float *ptr = &in[-FUNC0(s->min_pitch_val, pitch - 3)],
                *end = &in[-FUNC1(s->max_pitch_val, pitch + 3)],
                *best_hist_ptr = NULL;

    /* find best fitting point in history */
    do {
        dot = FUNC2(in, ptr, size);
        if (dot > optimal_gain) {
            optimal_gain  = dot;
            best_hist_ptr = ptr;
        }
    } while (--ptr >= end);

    if (optimal_gain <= 0)
        return -1;
    dot = FUNC2(best_hist_ptr, best_hist_ptr, size);
    if (dot <= 0) // would be 1.0
        return -1;

    if (optimal_gain <= dot) {
        dot = dot / (dot + 0.6 * optimal_gain); // 0.625-1.000
    } else
        dot = 0.625;

    /* actual smoothing */
    for (n = 0; n < size; n++)
        out[n] = best_hist_ptr[n] + dot * (in[n] - best_hist_ptr[n]);

    return 0;
}
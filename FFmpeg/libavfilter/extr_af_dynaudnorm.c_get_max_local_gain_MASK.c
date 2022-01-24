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
struct TYPE_3__ {double peak_value; double target_rms; int /*<<< orphan*/  max_amplification; } ;
typedef  TYPE_1__ DynamicAudioNormalizerContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 double DBL_EPSILON ; 
 double DBL_MAX ; 
 int /*<<< orphan*/  FUNC0 (double const,double const) ; 
 double FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ *,int) ; 
 double FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static double FUNC4(DynamicAudioNormalizerContext *s, AVFrame *frame,
                                 int channel)
{
    const double maximum_gain = s->peak_value / FUNC3(frame, channel);
    const double rms_gain = s->target_rms > DBL_EPSILON ? (s->target_rms / FUNC2(frame, channel)) : DBL_MAX;
    return FUNC1(s->max_amplification, FUNC0(maximum_gain, rms_gain));
}
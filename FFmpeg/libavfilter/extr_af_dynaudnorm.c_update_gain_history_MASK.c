#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int filter_size; double* prev_amplification_factor; int /*<<< orphan*/ * gain_history_minimum; int /*<<< orphan*/ * gain_history_smoothed; int /*<<< orphan*/ * gain_history_original; scalar_t__ alt_boundary_mode; } ;
typedef  TYPE_1__ DynamicAudioNormalizerContext ;

/* Variables and functions */
 double FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double const) ; 
 double FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int const FUNC6 (int /*<<< orphan*/ ) ; 
 double FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 double FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(DynamicAudioNormalizerContext *s, int channel,
                                double current_gain_factor)
{
    if (FUNC2(s->gain_history_original[channel]) ||
        FUNC2(s->gain_history_minimum[channel])) {
        const int pre_fill_size = s->filter_size / 2;
        const double initial_value = s->alt_boundary_mode ? current_gain_factor : 1.0;

        s->prev_amplification_factor[channel] = initial_value;

        while (FUNC6(s->gain_history_original[channel]) < pre_fill_size) {
            FUNC3(s->gain_history_original[channel], initial_value);
        }
    }

    FUNC3(s->gain_history_original[channel], current_gain_factor);

    while (FUNC6(s->gain_history_original[channel]) >= s->filter_size) {
        double minimum;
        FUNC1(FUNC6(s->gain_history_original[channel]) == s->filter_size);

        if (FUNC2(s->gain_history_minimum[channel])) {
            const int pre_fill_size = s->filter_size / 2;
            double initial_value = s->alt_boundary_mode ? FUNC4(s->gain_history_original[channel], 0) : 1.0;
            int input = pre_fill_size;

            while (FUNC6(s->gain_history_minimum[channel]) < pre_fill_size) {
                input++;
                initial_value = FUNC0(initial_value, FUNC4(s->gain_history_original[channel], input));
                FUNC3(s->gain_history_minimum[channel], initial_value);
            }
        }

        minimum = FUNC8(s->gain_history_original[channel]);

        FUNC3(s->gain_history_minimum[channel], minimum);

        FUNC5(s->gain_history_original[channel]);
    }

    while (FUNC6(s->gain_history_minimum[channel]) >= s->filter_size) {
        double smoothed;
        FUNC1(FUNC6(s->gain_history_minimum[channel]) == s->filter_size);
        smoothed = FUNC7(s, s->gain_history_minimum[channel]);

        FUNC3(s->gain_history_smoothed[channel], smoothed);

        FUNC5(s->gain_history_minimum[channel]);
    }
}
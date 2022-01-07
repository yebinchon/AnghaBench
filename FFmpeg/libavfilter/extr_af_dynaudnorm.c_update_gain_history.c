
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filter_size; double* prev_amplification_factor; int * gain_history_minimum; int * gain_history_smoothed; int * gain_history_original; scalar_t__ alt_boundary_mode; } ;
typedef TYPE_1__ DynamicAudioNormalizerContext ;


 double FFMIN (double,double) ;
 int av_assert0 (int) ;
 scalar_t__ cqueue_empty (int ) ;
 int cqueue_enqueue (int ,double const) ;
 double cqueue_peek (int ,int) ;
 int cqueue_pop (int ) ;
 int const cqueue_size (int ) ;
 double gaussian_filter (TYPE_1__*,int ) ;
 double minimum_filter (int ) ;

__attribute__((used)) static void update_gain_history(DynamicAudioNormalizerContext *s, int channel,
                                double current_gain_factor)
{
    if (cqueue_empty(s->gain_history_original[channel]) ||
        cqueue_empty(s->gain_history_minimum[channel])) {
        const int pre_fill_size = s->filter_size / 2;
        const double initial_value = s->alt_boundary_mode ? current_gain_factor : 1.0;

        s->prev_amplification_factor[channel] = initial_value;

        while (cqueue_size(s->gain_history_original[channel]) < pre_fill_size) {
            cqueue_enqueue(s->gain_history_original[channel], initial_value);
        }
    }

    cqueue_enqueue(s->gain_history_original[channel], current_gain_factor);

    while (cqueue_size(s->gain_history_original[channel]) >= s->filter_size) {
        double minimum;
        av_assert0(cqueue_size(s->gain_history_original[channel]) == s->filter_size);

        if (cqueue_empty(s->gain_history_minimum[channel])) {
            const int pre_fill_size = s->filter_size / 2;
            double initial_value = s->alt_boundary_mode ? cqueue_peek(s->gain_history_original[channel], 0) : 1.0;
            int input = pre_fill_size;

            while (cqueue_size(s->gain_history_minimum[channel]) < pre_fill_size) {
                input++;
                initial_value = FFMIN(initial_value, cqueue_peek(s->gain_history_original[channel], input));
                cqueue_enqueue(s->gain_history_minimum[channel], initial_value);
            }
        }

        minimum = minimum_filter(s->gain_history_original[channel]);

        cqueue_enqueue(s->gain_history_minimum[channel], minimum);

        cqueue_pop(s->gain_history_original[channel]);
    }

    while (cqueue_size(s->gain_history_minimum[channel]) >= s->filter_size) {
        double smoothed;
        av_assert0(cqueue_size(s->gain_history_minimum[channel]) == s->filter_size);
        smoothed = gaussian_filter(s, s->gain_history_minimum[channel]);

        cqueue_enqueue(s->gain_history_smoothed[channel], smoothed);

        cqueue_pop(s->gain_history_minimum[channel]);
    }
}

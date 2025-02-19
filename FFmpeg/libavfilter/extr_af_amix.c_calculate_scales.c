
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_inputs; int* input_state; float* scale_norm; int weight_sum; int dropout_transition; int sample_rate; float* input_scale; int * weights; } ;
typedef TYPE_1__ MixContext ;


 float FFABS (int ) ;
 int FFMAX (int,float) ;
 float FFSIGN (int ) ;
 int INPUT_ON ;

__attribute__((used)) static void calculate_scales(MixContext *s, int nb_samples)
{
    float weight_sum = 0.f;
    int i;

    for (i = 0; i < s->nb_inputs; i++)
        if (s->input_state[i] & INPUT_ON)
            weight_sum += FFABS(s->weights[i]);

    for (i = 0; i < s->nb_inputs; i++) {
        if (s->input_state[i] & INPUT_ON) {
            if (s->scale_norm[i] > weight_sum / FFABS(s->weights[i])) {
                s->scale_norm[i] -= ((s->weight_sum / FFABS(s->weights[i])) / s->nb_inputs) *
                                    nb_samples / (s->dropout_transition * s->sample_rate);
                s->scale_norm[i] = FFMAX(s->scale_norm[i], weight_sum / FFABS(s->weights[i]));
            }
        }
    }

    for (i = 0; i < s->nb_inputs; i++) {
        if (s->input_state[i] & INPUT_ON)
            s->input_scale[i] = 1.0f / s->scale_norm[i] * FFSIGN(s->weights[i]);
        else
            s->input_scale[i] = 0.0f;
    }
}

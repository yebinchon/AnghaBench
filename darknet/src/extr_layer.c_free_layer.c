
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; float* rand_gpu; float* z_gpu; float* r_gpu; float* h_gpu; float* m_gpu; float* v_gpu; float* prev_state_gpu; float* forgot_state_gpu; float* forgot_delta_gpu; float* state_gpu; float* state_delta_gpu; float* gate_gpu; float* gate_delta_gpu; float* save_gpu; float* save_delta_gpu; float* concat_gpu; float* concat_delta_gpu; float* binary_input_gpu; float* binary_weights_gpu; float* mean_gpu; float* variance_gpu; float* rolling_mean_gpu; float* rolling_variance_gpu; float* variance_delta_gpu; float* mean_delta_gpu; float* x_gpu; float* x_norm_gpu; float* weights_gpu; float* weight_updates_gpu; float* biases_gpu; float* bias_updates_gpu; float* scales_gpu; float* scale_updates_gpu; float* output_gpu; float* delta_gpu; float* squared_gpu; float* norms_gpu; scalar_t__ indexes_gpu; scalar_t__ binary_input; scalar_t__ h_cpu; scalar_t__ r_cpu; scalar_t__ z_cpu; scalar_t__ v; scalar_t__ m; scalar_t__ x_norm; scalar_t__ x; scalar_t__ rolling_variance; scalar_t__ rolling_mean; scalar_t__ variance_delta; scalar_t__ mean_delta; scalar_t__ variance; scalar_t__ mean; scalar_t__ spatial_mean; scalar_t__ norms; scalar_t__ squared; scalar_t__ output; scalar_t__ delta; scalar_t__ weight_updates; scalar_t__ weights; scalar_t__ scale_updates; scalar_t__ scales; scalar_t__ bias_updates; scalar_t__ biases; scalar_t__ binary_weights; scalar_t__ concat_delta; scalar_t__ concat; scalar_t__ state_delta; scalar_t__ forgot_delta; scalar_t__ forgot_state; scalar_t__ prev_state; scalar_t__ state; scalar_t__ cost; scalar_t__ rand; scalar_t__ map; scalar_t__ input_sizes; scalar_t__ input_layers; scalar_t__ indexes; scalar_t__ cweights; } ;
typedef TYPE_1__ layer ;


 scalar_t__ DROPOUT ;
 int cuda_free (float*) ;
 int free (scalar_t__) ;

void free_layer(layer l)
{
    if(l.type == DROPOUT){
        if(l.rand) free(l.rand);



        return;
    }
    if(l.cweights) free(l.cweights);
    if(l.indexes) free(l.indexes);
    if(l.input_layers) free(l.input_layers);
    if(l.input_sizes) free(l.input_sizes);
    if(l.map) free(l.map);
    if(l.rand) free(l.rand);
    if(l.cost) free(l.cost);
    if(l.state) free(l.state);
    if(l.prev_state) free(l.prev_state);
    if(l.forgot_state) free(l.forgot_state);
    if(l.forgot_delta) free(l.forgot_delta);
    if(l.state_delta) free(l.state_delta);
    if(l.concat) free(l.concat);
    if(l.concat_delta) free(l.concat_delta);
    if(l.binary_weights) free(l.binary_weights);
    if(l.biases) free(l.biases);
    if(l.bias_updates) free(l.bias_updates);
    if(l.scales) free(l.scales);
    if(l.scale_updates) free(l.scale_updates);
    if(l.weights) free(l.weights);
    if(l.weight_updates) free(l.weight_updates);
    if(l.delta) free(l.delta);
    if(l.output) free(l.output);
    if(l.squared) free(l.squared);
    if(l.norms) free(l.norms);
    if(l.spatial_mean) free(l.spatial_mean);
    if(l.mean) free(l.mean);
    if(l.variance) free(l.variance);
    if(l.mean_delta) free(l.mean_delta);
    if(l.variance_delta) free(l.variance_delta);
    if(l.rolling_mean) free(l.rolling_mean);
    if(l.rolling_variance) free(l.rolling_variance);
    if(l.x) free(l.x);
    if(l.x_norm) free(l.x_norm);
    if(l.m) free(l.m);
    if(l.v) free(l.v);
    if(l.z_cpu) free(l.z_cpu);
    if(l.r_cpu) free(l.r_cpu);
    if(l.h_cpu) free(l.h_cpu);
    if(l.binary_input) free(l.binary_input);
}

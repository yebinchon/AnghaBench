
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t burn_in; float learning_rate; size_t power; int policy; int scale; size_t step; int num_steps; size_t* steps; float* scales; int gamma; float max_batches; } ;
typedef TYPE_1__ network ;
 int exp (int) ;
 int fprintf (int ,char*) ;
 size_t get_current_batch (TYPE_1__*) ;
 float pow (int,size_t) ;
 int rand_uniform (int ,int) ;
 int stderr ;

float get_current_rate(network *net)
{
    size_t batch_num = get_current_batch(net);
    int i;
    float rate;
    if (batch_num < net->burn_in) return net->learning_rate * pow((float)batch_num / net->burn_in, net->power);
    switch (net->policy) {
        case 134:
            return net->learning_rate;
        case 129:
            return net->learning_rate * pow(net->scale, batch_num/net->step);
        case 128:
            rate = net->learning_rate;
            for(i = 0; i < net->num_steps; ++i){
                if(net->steps[i] > batch_num) return rate;
                rate *= net->scales[i];
            }
            return rate;
        case 133:
            return net->learning_rate * pow(net->gamma, batch_num);
        case 132:
            return net->learning_rate * pow(1 - (float)batch_num / net->max_batches, net->power);
        case 131:
            return net->learning_rate * pow(rand_uniform(0,1), net->power);
        case 130:
            return net->learning_rate * (1./(1.+exp(net->gamma*(batch_num - net->step))));
        default:
            fprintf(stderr, "Policy is weird!\n");
            return net->learning_rate;
    }
}

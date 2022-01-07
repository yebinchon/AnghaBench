
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; scalar_t__ truth_gpu; scalar_t__ input_gpu; struct TYPE_5__* truth; struct TYPE_5__* input; struct TYPE_5__* layers; } ;
typedef TYPE_1__ network ;


 int cuda_free (scalar_t__) ;
 int free (TYPE_1__*) ;
 int free_layer (TYPE_1__) ;

void free_network(network *net)
{
    int i;
    for(i = 0; i < net->n; ++i){
        free_layer(net->layers[i]);
    }
    free(net->layers);
    if(net->input) free(net->input);
    if(net->truth) free(net->truth);




    free(net);
}

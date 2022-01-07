
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_5__ {int n; int size; int c; double* weights; } ;
typedef TYPE_2__ layer ;


 int gpu_index ;
 TYPE_1__* load_network (char*,char*,int) ;
 int printf (char*,...) ;

void print_weights(char *cfgfile, char *weightfile, int n)
{
    gpu_index = -1;
    network *net = load_network(cfgfile, weightfile, 1);
    layer l = net->layers[n];
    int i, j;

    for(i = 0; i < l.n; ++i){

        for(j = 0; j < l.size*l.size*l.c; ++j){

            printf("%g ", l.weights[i*l.size*l.size*l.c + j]);
        }
        printf("\n");

    }

}

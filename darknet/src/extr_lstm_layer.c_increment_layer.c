
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outputs; int batch; int output; int delta; int x; int x_norm; int output_gpu; int delta_gpu; int x_gpu; int x_norm_gpu; } ;
typedef TYPE_1__ layer ;



__attribute__((used)) static void increment_layer(layer *l, int steps)
{
    int num = l->outputs*l->batch*steps;
    l->output += num;
    l->delta += num;
    l->x += num;
    l->x_norm += num;







}

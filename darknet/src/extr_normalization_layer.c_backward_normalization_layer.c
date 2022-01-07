
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int delta; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int w; int h; int c; int batch; int delta; int norms; int beta; } ;
typedef TYPE_2__ layer ;


 int mul_cpu (int,int ,int,int ,int) ;
 int pow_cpu (int,int ,int ,int,int ,int) ;

void backward_normalization_layer(const layer layer, network net)
{



    int w = layer.w;
    int h = layer.h;
    int c = layer.c;
    pow_cpu(w*h*c*layer.batch, -layer.beta, layer.norms, 1, net.delta, 1);
    mul_cpu(w*h*c*layer.batch, layer.delta, 1, net.delta, 1);
}

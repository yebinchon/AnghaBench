
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int delta; int train; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int batch; int out_w; int out_h; scalar_t__ type; int outputs; int delta; int out_c; int variance_delta; int mean_delta; int variance; int mean; int x; int scales; int scale_updates; int x_norm; int bias_updates; int rolling_variance; int rolling_mean; } ;
typedef TYPE_2__ layer ;


 scalar_t__ BATCHNORM ;
 int backward_bias (int ,int ,int,int ,int) ;
 int backward_scale_cpu (int ,int ,int,int ,int,int ) ;
 int copy_cpu (int,int ,int,int ,int) ;
 int mean_delta_cpu (int ,int ,int,int ,int,int ) ;
 int normalize_delta_cpu (int ,int ,int ,int ,int ,int,int ,int,int ) ;
 int scale_bias (int ,int ,int,int ,int) ;
 int variance_delta_cpu (int ,int ,int ,int ,int,int ,int,int ) ;

void backward_batchnorm_layer(layer l, network net)
{
    if(!net.train){
        l.mean = l.rolling_mean;
        l.variance = l.rolling_variance;
    }
    backward_bias(l.bias_updates, l.delta, l.batch, l.out_c, l.out_w*l.out_h);
    backward_scale_cpu(l.x_norm, l.delta, l.batch, l.out_c, l.out_w*l.out_h, l.scale_updates);

    scale_bias(l.delta, l.scales, l.batch, l.out_c, l.out_h*l.out_w);

    mean_delta_cpu(l.delta, l.variance, l.batch, l.out_c, l.out_w*l.out_h, l.mean_delta);
    variance_delta_cpu(l.x, l.delta, l.mean, l.variance, l.batch, l.out_c, l.out_w*l.out_h, l.variance_delta);
    normalize_delta_cpu(l.x, l.mean, l.variance, l.mean_delta, l.variance_delta, l.batch, l.out_c, l.out_w*l.out_h, l.delta);
    if(l.type == BATCHNORM) copy_cpu(l.outputs*l.batch, l.delta, 1, net.delta, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ train; int input; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {scalar_t__ type; int outputs; int batch; int out_h; int out_w; int out_c; int biases; int output; int scales; int rolling_variance; int rolling_mean; int x_norm; int variance; int mean; int x; } ;
typedef TYPE_2__ layer ;


 scalar_t__ BATCHNORM ;
 int add_bias (int ,int ,int,int ,int) ;
 int axpy_cpu (int ,double,int ,int,int ,int) ;
 int copy_cpu (int,int ,int,int ,int) ;
 int mean_cpu (int ,int,int ,int,int ) ;
 int normalize_cpu (int ,int ,int ,int,int ,int) ;
 int scal_cpu (int ,double,int ,int) ;
 int scale_bias (int ,int ,int,int ,int) ;
 int variance_cpu (int ,int ,int,int ,int,int ) ;

void forward_batchnorm_layer(layer l, network net)
{
    if(l.type == BATCHNORM) copy_cpu(l.outputs*l.batch, net.input, 1, l.output, 1);
    copy_cpu(l.outputs*l.batch, l.output, 1, l.x, 1);
    if(net.train){
        mean_cpu(l.output, l.batch, l.out_c, l.out_h*l.out_w, l.mean);
        variance_cpu(l.output, l.mean, l.batch, l.out_c, l.out_h*l.out_w, l.variance);

        scal_cpu(l.out_c, .99, l.rolling_mean, 1);
        axpy_cpu(l.out_c, .01, l.mean, 1, l.rolling_mean, 1);
        scal_cpu(l.out_c, .99, l.rolling_variance, 1);
        axpy_cpu(l.out_c, .01, l.variance, 1, l.rolling_variance, 1);

        normalize_cpu(l.output, l.mean, l.variance, l.batch, l.out_c, l.out_h*l.out_w);
        copy_cpu(l.outputs*l.batch, l.output, 1, l.x_norm, 1);
    } else {
        normalize_cpu(l.output, l.rolling_mean, l.rolling_variance, l.batch, l.out_c, l.out_h*l.out_w);
    }
    scale_bias(l.output, l.scales, l.batch, l.out_c, l.out_h*l.out_w);
    add_bias(l.output, l.biases, l.batch, l.out_c, l.out_h*l.out_w);
}

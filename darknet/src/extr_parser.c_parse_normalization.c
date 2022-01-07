
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c; int h; int w; int batch; } ;
typedef TYPE_1__ size_params ;
typedef int list ;
typedef int layer ;


 int make_normalization_layer (int ,int ,int ,int ,int,float,float,float) ;
 float option_find_float (int *,char*,int) ;
 int option_find_int (int *,char*,int) ;

layer parse_normalization(list *options, size_params params)
{
    float alpha = option_find_float(options, "alpha", .0001);
    float beta = option_find_float(options, "beta" , .75);
    float kappa = option_find_float(options, "kappa", 1);
    int size = option_find_int(options, "size", 5);
    layer l = make_normalization_layer(params.batch, params.w, params.h, params.c, size, alpha, beta, kappa);
    return l;
}

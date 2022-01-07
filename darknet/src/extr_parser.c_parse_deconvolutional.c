
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int h; int w; int c; int batch; TYPE_1__* net; } ;
typedef TYPE_2__ size_params ;
typedef int list ;
typedef int layer ;
struct TYPE_4__ {int adam; } ;
typedef int ACTIVATION ;


 int error (char*) ;
 int get_activation (char*) ;
 int make_deconvolutional_layer (int,int,int,int,int,int,int,int,int ,int,int ) ;
 int option_find_int (int *,char*,int) ;
 int option_find_int_quiet (int *,char*,int ) ;
 char* option_find_str (int *,char*,char*) ;

layer parse_deconvolutional(list *options, size_params params)
{
    int n = option_find_int(options, "filters",1);
    int size = option_find_int(options, "size",1);
    int stride = option_find_int(options, "stride",1);

    char *activation_s = option_find_str(options, "activation", "logistic");
    ACTIVATION activation = get_activation(activation_s);

    int batch,h,w,c;
    h = params.h;
    w = params.w;
    c = params.c;
    batch=params.batch;
    if(!(h && w && c)) error("Layer before deconvolutional layer must output image.");
    int batch_normalize = option_find_int_quiet(options, "batch_normalize", 0);
    int pad = option_find_int_quiet(options, "pad",0);
    int padding = option_find_int_quiet(options, "padding",0);
    if(pad) padding = size/2;

    layer l = make_deconvolutional_layer(batch,h,w,c,n,size,stride,padding, activation, batch_normalize, params.net->adam);

    return l;
}

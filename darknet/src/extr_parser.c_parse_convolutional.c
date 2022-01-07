
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int h; int w; int c; int batch; TYPE_1__* net; } ;
typedef TYPE_2__ size_params ;
typedef int list ;
struct TYPE_9__ {int dot; void* flipped; } ;
typedef TYPE_3__ convolutional_layer ;
struct TYPE_7__ {int adam; } ;
typedef int ACTIVATION ;


 int error (char*) ;
 int get_activation (char*) ;
 TYPE_3__ make_convolutional_layer (int,int,int,int,int,int,int,int,int,int ,int,int,int,int ) ;
 int option_find_float_quiet (int *,char*,int ) ;
 int option_find_int (int *,char*,int) ;
 void* option_find_int_quiet (int *,char*,int) ;
 char* option_find_str (int *,char*,char*) ;

convolutional_layer parse_convolutional(list *options, size_params params)
{
    int n = option_find_int(options, "filters",1);
    int size = option_find_int(options, "size",1);
    int stride = option_find_int(options, "stride",1);
    int pad = option_find_int_quiet(options, "pad",0);
    int padding = option_find_int_quiet(options, "padding",0);
    int groups = option_find_int_quiet(options, "groups", 1);
    if(pad) padding = size/2;

    char *activation_s = option_find_str(options, "activation", "logistic");
    ACTIVATION activation = get_activation(activation_s);

    int batch,h,w,c;
    h = params.h;
    w = params.w;
    c = params.c;
    batch=params.batch;
    if(!(h && w && c)) error("Layer before convolutional layer must output image.");
    int batch_normalize = option_find_int_quiet(options, "batch_normalize", 0);
    int binary = option_find_int_quiet(options, "binary", 0);
    int xnor = option_find_int_quiet(options, "xnor", 0);

    convolutional_layer layer = make_convolutional_layer(batch,h,w,c,n,groups,size,stride,padding,activation, batch_normalize, binary, xnor, params.net->adam);
    layer.flipped = option_find_int_quiet(options, "flipped", 0);
    layer.dot = option_find_float_quiet(options, "dot", 0);

    return layer;
}

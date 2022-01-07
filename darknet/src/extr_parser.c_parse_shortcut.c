
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int index; int batch; int c; int h; int w; } ;
typedef TYPE_1__ size_params ;
struct TYPE_9__ {TYPE_3__* layers; } ;
typedef TYPE_2__ network ;
typedef int list ;
struct TYPE_10__ {void* beta; void* alpha; int activation; int out_c; int out_h; int out_w; } ;
typedef TYPE_3__ layer ;
typedef int ACTIVATION ;


 int atoi (char*) ;
 int get_activation (char*) ;
 TYPE_3__ make_shortcut_layer (int,int,int ,int ,int ,int ,int ,int ) ;
 char* option_find (int *,char*) ;
 void* option_find_float_quiet (int *,char*,int) ;
 char* option_find_str (int *,char*,char*) ;

layer parse_shortcut(list *options, size_params params, network *net)
{
    char *l = option_find(options, "from");
    int index = atoi(l);
    if(index < 0) index = params.index + index;

    int batch = params.batch;
    layer from = net->layers[index];

    layer s = make_shortcut_layer(batch, index, params.w, params.h, params.c, from.out_w, from.out_h, from.out_c);

    char *activation_s = option_find_str(options, "activation", "linear");
    ACTIVATION activation = get_activation(activation_s);
    s.activation = activation;
    s.alpha = option_find_float_quiet(options, "alpha", 1);
    s.beta = option_find_float_quiet(options, "beta", 1);
    return s;
}

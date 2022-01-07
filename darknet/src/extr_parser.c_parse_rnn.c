
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* net; int time_steps; int inputs; int batch; } ;
typedef TYPE_2__ size_params ;
typedef int list ;
struct TYPE_9__ {void* shortcut; } ;
typedef TYPE_3__ layer ;
struct TYPE_7__ {int adam; } ;
typedef int ACTIVATION ;


 int get_activation (char*) ;
 TYPE_3__ make_rnn_layer (int ,int ,int,int ,int ,int,int ) ;
 int option_find_int (int *,char*,int) ;
 void* option_find_int_quiet (int *,char*,int ) ;
 char* option_find_str (int *,char*,char*) ;

layer parse_rnn(list *options, size_params params)
{
    int output = option_find_int(options, "output",1);
    char *activation_s = option_find_str(options, "activation", "logistic");
    ACTIVATION activation = get_activation(activation_s);
    int batch_normalize = option_find_int_quiet(options, "batch_normalize", 0);

    layer l = make_rnn_layer(params.batch, params.inputs, output, params.time_steps, activation, batch_normalize, params.net->adam);

    l.shortcut = option_find_int_quiet(options, "shortcut", 0);

    return l;
}

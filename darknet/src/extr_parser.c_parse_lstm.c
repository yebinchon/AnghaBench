
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* net; int time_steps; int inputs; int batch; } ;
typedef TYPE_2__ size_params ;
typedef int list ;
typedef int layer ;
struct TYPE_4__ {int adam; } ;


 int make_lstm_layer (int ,int ,int,int ,int,int ) ;
 int option_find_int (int *,char*,int) ;
 int option_find_int_quiet (int *,char*,int ) ;

layer parse_lstm(list *options, size_params params)
{
    int output = option_find_int(options, "output", 1);
    int batch_normalize = option_find_int_quiet(options, "batch_normalize", 0);

    layer l = make_lstm_layer(params.batch, params.inputs, output, params.time_steps, batch_normalize, params.net->adam);

    return l;
}

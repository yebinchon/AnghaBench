
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int update_args ;
struct TYPE_3__ {int * output_layer; int * self_layer; int * input_layer; } ;
typedef TYPE_1__ layer ;


 int update_connected_layer (int ,int ) ;

void update_rnn_layer(layer l, update_args a)
{
    update_connected_layer(*(l.input_layer), a);
    update_connected_layer(*(l.self_layer), a);
    update_connected_layer(*(l.output_layer), a);
}

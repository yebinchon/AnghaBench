
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int n; TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {scalar_t__ type; struct TYPE_8__* state_h_layer; struct TYPE_8__* state_r_layer; struct TYPE_8__* state_z_layer; struct TYPE_8__* input_h_layer; struct TYPE_8__* input_r_layer; struct TYPE_8__* input_z_layer; scalar_t__ batch_normalize; } ;
typedef TYPE_2__ layer ;


 scalar_t__ CONNECTED ;
 scalar_t__ CONVOLUTIONAL ;
 scalar_t__ GRU ;
 int denormalize_connected_layer (TYPE_2__) ;
 int denormalize_convolutional_layer (TYPE_2__) ;
 int gpu_index ;
 TYPE_1__* load_network (char*,char*,int ) ;
 int save_weights (TYPE_1__*,char*) ;

void reset_normalize_net(char *cfgfile, char *weightfile, char *outfile)
{
    gpu_index = -1;
    network *net = load_network(cfgfile, weightfile, 0);
    int i;
    for (i = 0; i < net->n; ++i) {
        layer l = net->layers[i];
        if (l.type == CONVOLUTIONAL && l.batch_normalize) {
            denormalize_convolutional_layer(l);
        }
        if (l.type == CONNECTED && l.batch_normalize) {
            denormalize_connected_layer(l);
        }
        if (l.type == GRU && l.batch_normalize) {
            denormalize_connected_layer(*l.input_z_layer);
            denormalize_connected_layer(*l.input_r_layer);
            denormalize_connected_layer(*l.input_h_layer);
            denormalize_connected_layer(*l.state_z_layer);
            denormalize_connected_layer(*l.state_r_layer);
            denormalize_connected_layer(*l.state_h_layer);
        }
    }
    save_weights(net, outfile);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; scalar_t__* seen; } ;
typedef TYPE_1__ network ;


 int gpu_index ;
 int load_weights_upto (TYPE_1__*,char*,int,int ) ;
 TYPE_1__* parse_network_cfg (char*) ;
 int save_weights_upto (TYPE_1__*,char*,int ) ;

void oneoff2(char *cfgfile, char *weightfile, char *outfile, int l)
{
    gpu_index = -1;
    network *net = parse_network_cfg(cfgfile);
    if(weightfile){
        load_weights_upto(net, weightfile, 0, net->n);
        load_weights_upto(net, weightfile, l, net->n);
    }
    *net->seen = 0;
    save_weights_upto(net, outfile, net->n);
}

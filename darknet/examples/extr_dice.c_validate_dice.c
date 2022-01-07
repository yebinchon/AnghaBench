
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int h; int w; } ;
typedef TYPE_1__ network ;
struct TYPE_10__ {int size; } ;
typedef TYPE_2__ list ;
typedef int data ;


 char** dice_labels ;
 int free_data (int ) ;
 int free_list (TYPE_2__*) ;
 TYPE_2__* get_paths (char*) ;
 scalar_t__ list_to_array (TYPE_2__*) ;
 int load_data_old (char**,int,int ,char**,int,int ,int ) ;
 int load_weights (TYPE_1__*,char*) ;
 float* network_accuracies (TYPE_1__,int ,int) ;
 TYPE_1__ parse_network_cfg (char*) ;
 int printf (char*,float,int) ;
 int srand (int ) ;
 int time (int ) ;

void validate_dice(char *filename, char *weightfile)
{
    network net = parse_network_cfg(filename);
    if(weightfile){
        load_weights(&net, weightfile);
    }
    srand(time(0));

    char **labels = dice_labels;
    list *plist = get_paths("data/dice/dice.val.list");

    char **paths = (char **)list_to_array(plist);
    int m = plist->size;
    free_list(plist);

    data val = load_data_old(paths, m, 0, labels, 6, net.w, net.h);
    float *acc = network_accuracies(net, val, 2);
    printf("Validation Accuracy: %f, %d images\n", acc[0], m);
    free_data(val);
}

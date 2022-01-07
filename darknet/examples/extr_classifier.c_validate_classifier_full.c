
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int w; int hierarchy; int outputs; } ;
typedef TYPE_1__ network ;
struct TYPE_19__ {int size; } ;
typedef TYPE_2__ list ;
struct TYPE_20__ {int data; int h; int w; } ;
typedef TYPE_3__ image ;


 int* calloc (int,int) ;
 int free_image (TYPE_3__) ;
 int free_list (TYPE_2__*) ;
 char** get_labels (char*) ;
 TYPE_2__* get_paths (char*) ;
 int hierarchy_predictions (float*,int ,int ,int,int) ;
 scalar_t__ list_to_array (TYPE_2__*) ;
 TYPE_3__ load_image_color (char*,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 float* network_predict (TYPE_1__*,int ) ;
 int option_find_int (TYPE_2__*,char*,int) ;
 char* option_find_str (TYPE_2__*,char*,char*) ;
 int printf (char*,int,float,int,float) ;
 TYPE_2__* read_data_cfg (char*) ;
 TYPE_3__ resize_min (TYPE_3__,int) ;
 int resize_network (TYPE_1__*,int ,int ) ;
 int set_batch_network (TYPE_1__*,int) ;
 int srand (int ) ;
 scalar_t__ strstr (char*,char*) ;
 int time (int ) ;
 int top_k (float*,int,int,int*) ;

void validate_classifier_full(char *datacfg, char *filename, char *weightfile)
{
    int i, j;
    network *net = load_network(filename, weightfile, 0);
    set_batch_network(net, 1);
    srand(time(0));

    list *options = read_data_cfg(datacfg);

    char *label_list = option_find_str(options, "labels", "data/labels.list");
    char *valid_list = option_find_str(options, "valid", "data/train.list");
    int classes = option_find_int(options, "classes", 2);
    int topk = option_find_int(options, "top", 1);

    char **labels = get_labels(label_list);
    list *plist = get_paths(valid_list);

    char **paths = (char **)list_to_array(plist);
    int m = plist->size;
    free_list(plist);

    float avg_acc = 0;
    float avg_topk = 0;
    int *indexes = calloc(topk, sizeof(int));

    int size = net->w;
    for(i = 0; i < m; ++i){
        int class = -1;
        char *path = paths[i];
        for(j = 0; j < classes; ++j){
            if(strstr(path, labels[j])){
                class = j;
                break;
            }
        }
        image im = load_image_color(paths[i], 0, 0);
        image resized = resize_min(im, size);
        resize_network(net, resized.w, resized.h);



        float *pred = network_predict(net, resized.data);
        if(net->hierarchy) hierarchy_predictions(pred, net->outputs, net->hierarchy, 1, 1);

        free_image(im);
        free_image(resized);
        top_k(pred, classes, topk, indexes);

        if(indexes[0] == class) avg_acc += 1;
        for(j = 0; j < topk; ++j){
            if(indexes[j] == class) avg_topk += 1;
        }

        printf("%d: top 1: %f, top %d: %f\n", i, avg_acc/(i+1), topk, avg_topk/(i+1));
    }
}

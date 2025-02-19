
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int scales ;
struct TYPE_19__ {int hierarchy; int outputs; } ;
typedef TYPE_1__ network ;
struct TYPE_20__ {int size; } ;
typedef TYPE_2__ list ;
struct TYPE_21__ {scalar_t__ data; int h; int w; } ;
typedef TYPE_3__ image ;


 int axpy_cpu (int,int,float*,int,float*,int) ;
 void* calloc (int,int) ;
 int flip_image (TYPE_3__) ;
 int free (float*) ;
 int free_image (TYPE_3__) ;
 int free_list (TYPE_2__*) ;
 char** get_labels (char*) ;
 TYPE_2__* get_paths (char*) ;
 int hierarchy_predictions (float*,int ,int ,int,int) ;
 scalar_t__ list_to_array (TYPE_2__*) ;
 TYPE_3__ load_image_color (char*,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 float* network_predict (TYPE_1__*,scalar_t__) ;
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

void validate_attention_multi(char *datacfg, char *filename, char *weightfile)
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
    int scales[] = {224, 288, 320, 352, 384};
    int nscales = sizeof(scales)/sizeof(scales[0]);

    char **paths = (char **)list_to_array(plist);
    int m = plist->size;
    free_list(plist);

    float avg_acc = 0;
    float avg_topk = 0;
    int *indexes = calloc(topk, sizeof(int));

    for(i = 0; i < m; ++i){
        int class = -1;
        char *path = paths[i];
        for(j = 0; j < classes; ++j){
            if(strstr(path, labels[j])){
                class = j;
                break;
            }
        }
        float *pred = calloc(classes, sizeof(float));
        image im = load_image_color(paths[i], 0, 0);
        for(j = 0; j < nscales; ++j){
            image r = resize_min(im, scales[j]);
            resize_network(net, r.w, r.h);
            float *p = network_predict(net, r.data);
            if(net->hierarchy) hierarchy_predictions(p, net->outputs, net->hierarchy, 1 , 1);
            axpy_cpu(classes, 1, p, 1, pred, 1);
            flip_image(r);
            p = network_predict(net, r.data);
            axpy_cpu(classes, 1, p, 1, pred, 1);
            if(r.data != im.data) free_image(r);
        }
        free_image(im);
        top_k(pred, classes, topk, indexes);
        free(pred);
        if(indexes[0] == class) avg_acc += 1;
        for(j = 0; j < topk; ++j){
            if(indexes[j] == class) avg_topk += 1;
        }

        printf("%d: top 1: %f, top %d: %f\n", i, avg_acc/(i+1), topk, avg_topk/(i+1));
    }
}

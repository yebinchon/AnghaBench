
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int outputs; int hierarchy; int h; int w; } ;
typedef TYPE_1__ network ;
typedef int list ;
struct TYPE_11__ {float* data; } ;
typedef TYPE_2__ image ;
typedef scalar_t__ clock_t ;


 int* calloc (int,int) ;
 scalar_t__ clock () ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int fprintf (int ,char*,char*,double) ;
 int free_image (TYPE_2__) ;
 char** get_labels (char*) ;
 int hierarchy_predictions (float*,int ,int ,int,int) ;
 TYPE_2__ letterbox_image (TYPE_2__,int ,int ) ;
 TYPE_2__ load_image_color (char*,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 float* network_predict (TYPE_1__*,float*) ;
 int option_find_int (int *,char*,int) ;
 char* option_find_str (int *,char*,char*) ;
 int printf (char*,...) ;
 int * read_data_cfg (char*) ;
 double sec (scalar_t__) ;
 int set_batch_network (TYPE_1__*,int) ;
 int srand (int) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int strtok (char*,char*) ;
 int top_k (float*,int ,int,int*) ;

void predict_attention(char *datacfg, char *cfgfile, char *weightfile, char *filename, int top)
{
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    srand(2222222);

    list *options = read_data_cfg(datacfg);

    char *name_list = option_find_str(options, "names", 0);
    if(!name_list) name_list = option_find_str(options, "labels", "data/labels.list");
    if(top == 0) top = option_find_int(options, "top", 1);

    int i = 0;
    char **names = get_labels(name_list);
    clock_t time;
    int *indexes = calloc(top, sizeof(int));
    char buff[256];
    char *input = buff;
    while(1){
        if(filename){
            strncpy(input, filename, 256);
        }else{
            printf("Enter Image Path: ");
            fflush(stdout);
            input = fgets(input, 256, stdin);
            if(!input) return;
            strtok(input, "\n");
        }
        image im = load_image_color(input, 0, 0);
        image r = letterbox_image(im, net->w, net->h);



        float *X = r.data;
        time=clock();
        float *predictions = network_predict(net, X);
        if(net->hierarchy) hierarchy_predictions(predictions, net->outputs, net->hierarchy, 1, 1);
        top_k(predictions, net->outputs, top, indexes);
        fprintf(stderr, "%s: Predicted in %f seconds.\n", input, sec(clock()-time));
        for(i = 0; i < top; ++i){
            int index = indexes[i];


            printf("%5.2f%%: %s\n", predictions[index]*100, names[index]);
        }
        if(r.data != im.data) free_image(r);
        free_image(im);
        if (filename) break;
    }
}

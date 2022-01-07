
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int n; TYPE_2__* layers; int h; int w; } ;
typedef TYPE_1__ network ;
typedef int list ;
struct TYPE_18__ {int classes; } ;
typedef TYPE_2__ layer ;
struct TYPE_19__ {float* data; int h; int w; } ;
typedef TYPE_3__ image ;
typedef int detection ;


 int do_nms_sort (int *,int,int ,float) ;
 int draw_detections (TYPE_3__,int *,int,float,char**,TYPE_3__**,int ) ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int free_detections (int *,int) ;
 int free_image (TYPE_3__) ;
 char** get_labels (char*) ;
 int * get_network_boxes (TYPE_1__*,int ,int ,float,float,int ,int,int*) ;
 TYPE_3__ letterbox_image (TYPE_3__,int ,int ) ;
 TYPE_3__** load_alphabet () ;
 TYPE_3__ load_image_color (char*,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 int make_window (char*,int,int,int ) ;
 int network_predict (TYPE_1__*,float*) ;
 char* option_find_str (int *,char*,char*) ;
 int printf (char*,...) ;
 int * read_data_cfg (char*) ;
 int save_image (TYPE_3__,char*) ;
 int set_batch_network (TYPE_1__*,int) ;
 int show_image (TYPE_3__,char*,int ) ;
 int srand (int) ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int strtok (char*,char*) ;
 double what_time_is_it_now () ;

void test_detector(char *datacfg, char *cfgfile, char *weightfile, char *filename, float thresh, float hier_thresh, char *outfile, int fullscreen)
{
    list *options = read_data_cfg(datacfg);
    char *name_list = option_find_str(options, "names", "data/names.list");
    char **names = get_labels(name_list);

    image **alphabet = load_alphabet();
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    srand(2222222);
    double time;
    char buff[256];
    char *input = buff;
    float nms=.45;
    while(1){
        if(filename){
            strncpy(input, filename, 256);
        } else {
            printf("Enter Image Path: ");
            fflush(stdout);
            input = fgets(input, 256, stdin);
            if(!input) return;
            strtok(input, "\n");
        }
        image im = load_image_color(input,0,0);
        image sized = letterbox_image(im, net->w, net->h);




        layer l = net->layers[net->n-1];


        float *X = sized.data;
        time=what_time_is_it_now();
        network_predict(net, X);
        printf("%s: Predicted in %f seconds.\n", input, what_time_is_it_now()-time);
        int nboxes = 0;
        detection *dets = get_network_boxes(net, im.w, im.h, thresh, hier_thresh, 0, 1, &nboxes);


        if (nms) do_nms_sort(dets, nboxes, l.classes, nms);
        draw_detections(im, dets, nboxes, thresh, names, alphabet, l.classes);
        free_detections(dets, nboxes);
        if(outfile){
            save_image(im, outfile);
        }
        else{
            save_image(im, "predictions");




        }

        free_image(im);
        free_image(sized);
        if (filename) break;
    }
}

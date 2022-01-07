
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int n; int h; int w; TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_18__ {int side; int n; int classes; } ;
typedef TYPE_2__ layer ;
struct TYPE_19__ {float* data; } ;
typedef TYPE_3__ image ;
typedef int detection ;
typedef scalar_t__ clock_t ;


 scalar_t__ clock () ;
 int do_nms_sort (int *,int,int ,float) ;
 int draw_detections (TYPE_3__,int *,int,float,int ,TYPE_3__**,int) ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int free_detections (int *,int) ;
 int free_image (TYPE_3__) ;
 int * get_network_boxes (TYPE_1__*,int,int,float,int ,int ,int ,int*) ;
 TYPE_3__** load_alphabet () ;
 TYPE_3__ load_image_color (char*,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 int network_predict (TYPE_1__*,float*) ;
 int printf (char*,...) ;
 TYPE_3__ resize_image (TYPE_3__,int ,int ) ;
 int save_image (TYPE_3__,char*) ;
 double sec (scalar_t__) ;
 int set_batch_network (TYPE_1__*,int) ;
 int show_image (TYPE_3__,char*,int ) ;
 int srand (int) ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int strtok (char*,char*) ;
 int voc_names ;

void test_yolo(char *cfgfile, char *weightfile, char *filename, float thresh)
{
    image **alphabet = load_alphabet();
    network *net = load_network(cfgfile, weightfile, 0);
    layer l = net->layers[net->n-1];
    set_batch_network(net, 1);
    srand(2222222);
    clock_t time;
    char buff[256];
    char *input = buff;
    float nms=.4;
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
        image sized = resize_image(im, net->w, net->h);
        float *X = sized.data;
        time=clock();
        network_predict(net, X);
        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));

        int nboxes = 0;
        detection *dets = get_network_boxes(net, 1, 1, thresh, 0, 0, 0, &nboxes);
        if (nms) do_nms_sort(dets, l.side*l.side*l.n, l.classes, nms);

        draw_detections(im, dets, l.side*l.side*l.n, thresh, voc_names, alphabet, 20);
        save_image(im, "predictions");
        show_image(im, "predictions", 0);
        free_detections(dets, nboxes);
        free_image(im);
        free_image(sized);
        if (filename) break;
    }
}

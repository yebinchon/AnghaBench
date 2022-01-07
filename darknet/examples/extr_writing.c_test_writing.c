
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int network ;
struct TYPE_10__ {int w; int h; int c; float* data; } ;
typedef TYPE_1__ image ;
typedef scalar_t__ clock_t ;


 scalar_t__ clock () ;
 int cvDestroyAllWindows () ;
 int cvWaitKey (int ) ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int free_image (TYPE_1__) ;
 TYPE_1__ get_network_image (int ) ;
 TYPE_1__ load_image_color (char*,int ,int ) ;
 int load_weights (int *,char*) ;
 int network_predict (int ,float*) ;
 int parse_network_cfg (char*) ;
 int printf (char*,...) ;
 TYPE_1__ resize_image (TYPE_1__,int,int) ;
 int resize_network (int *,int,int) ;
 double sec (scalar_t__) ;
 int set_batch_network (int *,int) ;
 int show_image (TYPE_1__,char*) ;
 int srand (int) ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int strtok (char*,char*) ;
 TYPE_1__ threshold_image (TYPE_1__,double) ;

void test_writing(char *cfgfile, char *weightfile, char *filename)
{
    network net = parse_network_cfg(cfgfile);
    if(weightfile){
        load_weights(&net, weightfile);
    }
    set_batch_network(&net, 1);
    srand(2222222);
    clock_t time;
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
        resize_network(&net, im.w, im.h);
        printf("%d %d %d\n", im.h, im.w, im.c);
        float *X = im.data;
        time=clock();
        network_predict(net, X);
        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
        image pred = get_network_image(net);

        image upsampled = resize_image(pred, im.w, im.h);
        image thresh = threshold_image(upsampled, .5);
        pred = thresh;

        show_image(pred, "prediction");
        show_image(im, "orig");





        free_image(upsampled);
        free_image(thresh);
        free_image(im);
        if (filename) break;
    }
}

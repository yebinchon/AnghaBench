
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int h; int w; } ;
typedef TYPE_1__ network ;
struct TYPE_16__ {float* data; } ;
typedef TYPE_2__ image ;
typedef scalar_t__ clock_t ;


 scalar_t__ clock () ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int free_image (TYPE_2__) ;
 TYPE_2__ get_network_image (TYPE_1__*) ;
 TYPE_2__ letterbox_image (TYPE_2__,int ,int ) ;
 TYPE_2__ load_image_color (char*,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 TYPE_2__ mask_to_rgb (TYPE_2__) ;
 float* network_predict (TYPE_1__*,float*) ;
 int printf (char*,...) ;
 double sec (scalar_t__) ;
 int set_batch_network (TYPE_1__*,int) ;
 int show_image (TYPE_2__,char*,int) ;
 int srand (int) ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int strtok (char*,char*) ;

void predict_isegmenter(char *datafile, char *cfg, char *weights, char *filename)
{
    network *net = load_network(cfg, weights, 0);
    set_batch_network(net, 1);
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
        image sized = letterbox_image(im, net->w, net->h);

        float *X = sized.data;
        time=clock();
        float *predictions = network_predict(net, X);
        image pred = get_network_image(net);
        image prmask = mask_to_rgb(pred);
        printf("Predicted: %f\n", predictions[0]);
        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
        show_image(sized, "orig", 1);
        show_image(prmask, "pred", 0);
        free_image(im);
        free_image(sized);
        free_image(prmask);
        if (filename) break;
    }
}

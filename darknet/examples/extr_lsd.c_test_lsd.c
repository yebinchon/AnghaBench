
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int n; int w; int h; TYPE_1__* layers; } ;
typedef TYPE_2__ network ;
struct TYPE_21__ {int w; int h; float* data; } ;
typedef TYPE_3__ image ;
typedef scalar_t__ clock_t ;
struct TYPE_19__ {int out_c; } ;


 scalar_t__ clock () ;
 int constrain_image (TYPE_3__) ;
 TYPE_3__ crop_image (TYPE_3__,int,int,int,int) ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int free_image (TYPE_3__) ;
 TYPE_3__ get_network_image_layer (TYPE_2__*,int) ;
 int grayscale_image_3c (TYPE_3__) ;
 TYPE_3__ load_image_color (char*,int ,int ) ;
 TYPE_2__* load_network (char*,char*,int ) ;
 int network_predict (TYPE_2__*,float*) ;
 int printf (char*,...) ;
 TYPE_3__ resize_min (TYPE_3__,int) ;
 int save_image (TYPE_3__,char*) ;
 double sec (scalar_t__) ;
 int set_batch_network (TYPE_2__*,int) ;
 int show_image (TYPE_3__,char*,int) ;
 int srand (int) ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int strtok (char*,char*) ;

void test_lsd(char *cfg, char *weights, char *filename, int gray)
{
    network *net = load_network(cfg, weights, 0);
    set_batch_network(net, 1);
    srand(2222222);

    clock_t time;
    char buff[256];
    char *input = buff;
    int i, imlayer = 0;

    for (i = 0; i < net->n; ++i) {
        if (net->layers[i].out_c == 3) {
            imlayer = i;
            printf("%d\n", i);
            break;
        }
    }

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
        image resized = resize_min(im, net->w);
        image crop = crop_image(resized, (resized.w - net->w)/2, (resized.h - net->h)/2, net->w, net->h);
        if(gray) grayscale_image_3c(crop);

        float *X = crop.data;
        time=clock();
        network_predict(net, X);
        image out = get_network_image_layer(net, imlayer);

        constrain_image(out);
        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
        save_image(out, "out");
        show_image(out, "out", 1);
        show_image(crop, "crop", 0);

        free_image(im);
        free_image(resized);
        free_image(crop);
        if (filename) break;
    }
}

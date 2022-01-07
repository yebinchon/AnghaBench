
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int h; int w; } ;
typedef TYPE_1__ network ;
struct TYPE_11__ {float* data; } ;
typedef TYPE_2__ image ;


 char** dice_labels ;
 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int free_image (TYPE_2__) ;
 TYPE_2__ load_image_color (char*,int ,int ) ;
 int load_weights (TYPE_1__*,char*) ;
 float* network_predict (TYPE_1__,float*) ;
 TYPE_1__ parse_network_cfg (char*) ;
 int printf (char*,...) ;
 int set_batch_network (TYPE_1__*,int) ;
 int srand (int) ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int strtok (char*,char*) ;
 int top_predictions (TYPE_1__,int,int*) ;

void test_dice(char *cfgfile, char *weightfile, char *filename)
{
    network net = parse_network_cfg(cfgfile);
    if(weightfile){
        load_weights(&net, weightfile);
    }
    set_batch_network(&net, 1);
    srand(2222222);
    int i = 0;
    char **names = dice_labels;
    char buff[256];
    char *input = buff;
    int indexes[6];
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
        image im = load_image_color(input, net.w, net.h);
        float *X = im.data;
        float *predictions = network_predict(net, X);
        top_predictions(net, 6, indexes);
        for(i = 0; i < 6; ++i){
            int index = indexes[i];
            printf("%s: %f\n", names[index], predictions[index]);
        }
        free_image(im);
        if (filename) break;
    }
}

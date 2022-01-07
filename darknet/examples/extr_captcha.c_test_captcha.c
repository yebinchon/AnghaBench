
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int h; int w; } ;
typedef TYPE_1__ network ;
struct TYPE_10__ {float* data; } ;
typedef TYPE_2__ image ;


 int fflush (int ) ;
 char* fgets (char*,int,int ) ;
 int free_image (TYPE_2__) ;
 char** get_labels (char*) ;
 TYPE_2__ load_image_color (char*,int ,int ) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 float* network_predict (TYPE_1__*,float*) ;
 int printf (char*,...) ;
 int set_batch_network (TYPE_1__*,int) ;
 int srand (int) ;
 int stdin ;
 int stdout ;
 int strncpy (char*,char*,int) ;
 int strtok (char*,char*) ;
 int top_predictions (TYPE_1__*,int,int*) ;

void test_captcha(char *cfgfile, char *weightfile, char *filename)
{
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    srand(2222222);
    int i = 0;
    char **names = get_labels("/data/captcha/reimgs.labels.list");
    char buff[256];
    char *input = buff;
    int indexes[26];
    while(1){
        if(filename){
            strncpy(input, filename, 256);
        }else{


            input = fgets(input, 256, stdin);
            if(!input) return;
            strtok(input, "\n");
        }
        image im = load_image_color(input, net->w, net->h);
        float *X = im.data;
        float *predictions = network_predict(net, X);
        top_predictions(net, 26, indexes);

        for(i = 0; i < 26; ++i){
            int index = indexes[i];
            if(i != 0) printf(", ");
            printf("%s %f", names[index], predictions[index]);
        }
        printf("\n");
        fflush(stdout);
        free_image(im);
        if (filename) break;
    }
}

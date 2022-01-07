
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int n; int c; int h; int w; } ;
typedef TYPE_1__ network ;
struct TYPE_14__ {int w; int h; int c; float* data; } ;
typedef TYPE_2__ image ;
typedef scalar_t__ clock_t ;


 scalar_t__ clock () ;
 int free_image (TYPE_2__) ;
 TYPE_2__ get_network_image_layer (TYPE_1__*,int) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 TYPE_2__ make_image (int ,int ,int ) ;
 int network_predict (TYPE_1__*,float*) ;
 int normalize_image (TYPE_2__) ;
 int printf (char*,char*,double) ;
 float rand_normal () ;
 int save_image (TYPE_2__,char*) ;
 double sec (scalar_t__) ;
 int set_batch_network (TYPE_1__*,int) ;
 int show_image (TYPE_2__,char*,int ) ;
 int srand (int) ;

void test_dcgan(char *cfgfile, char *weightfile)
{
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    srand(2222222);

    clock_t time;
    char buff[256];
    char *input = buff;
    int imlayer = 0;

    imlayer = net->n-1;

    while(1){
        image im = make_image(net->w, net->h, net->c);
        int i;
        for(i = 0; i < im.w*im.h*im.c; ++i){
            im.data[i] = rand_normal();
        }



        float *X = im.data;
        time=clock();
        network_predict(net, X);
        image out = get_network_image_layer(net, imlayer);

        normalize_image(out);
        printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
        save_image(out, "out");
        show_image(out, "out", 0);

        free_image(im);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct TYPE_17__ {TYPE_11__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_18__ {int w; int h; } ;
typedef TYPE_2__ image ;
struct TYPE_16__ {int n; } ;


 TYPE_2__ copy_image (TYPE_2__) ;
 int fill_image (TYPE_2__,double) ;
 int free_image (TYPE_2__) ;
 TYPE_2__* get_weights (TYPE_11__) ;
 int ghost_image (TYPE_2__,TYPE_2__,int,int) ;
 TYPE_1__* load_network (char*,char*,int ) ;
 TYPE_2__ make_image (int,int,int) ;
 int rand () ;
 int random_distort_image (TYPE_2__,int,double,double) ;
 int rotate_image_cw (TYPE_2__,int) ;
 int save_image (TYPE_2__,char*) ;
 int sprintf (char*,char*,char*,int) ;

void mkimg(char *cfgfile, char *weightfile, int h, int w, int num, char *prefix)
{
    network *net = load_network(cfgfile, weightfile, 0);
    image *ims = get_weights(net->layers[0]);
    int n = net->layers[0].n;
    int z;
    for(z = 0; z < num; ++z){
        image im = make_image(h, w, 3);
        fill_image(im, .5);
        int i;
        for(i = 0; i < 100; ++i){
            image r = copy_image(ims[rand()%n]);
            rotate_image_cw(r, rand()%4);
            random_distort_image(r, 1, 1.5, 1.5);
            int dx = rand()%(w-r.w);
            int dy = rand()%(h-r.h);
            ghost_image(r, im, dx, dy);
            free_image(r);
        }
        char buff[256];
        sprintf(buff, "%s/gen_%d", prefix, z);
        save_image(im, buff);
        free_image(im);
    }
}

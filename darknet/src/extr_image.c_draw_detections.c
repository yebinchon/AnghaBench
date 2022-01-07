
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {double h; int w; } ;
typedef TYPE_1__ image ;
struct TYPE_22__ {int x; int w; int y; int h; } ;
struct TYPE_21__ {float* prob; scalar_t__ mask; TYPE_3__ bbox; } ;
typedef TYPE_2__ detection ;
typedef TYPE_3__ box ;


 int draw_box_width (TYPE_1__,int,int,int,int,int,float,float,float) ;
 int draw_label (TYPE_1__,int,int,TYPE_1__,float*) ;
 int embed_image (TYPE_1__,TYPE_1__,int,int) ;
 TYPE_1__ float_to_image (int,int,int,scalar_t__) ;
 int free_image (TYPE_1__) ;
 float get_color (int,int,int) ;
 TYPE_1__ get_label (TYPE_1__**,char*,double) ;
 int printf (char*,char*,int) ;
 TYPE_1__ resize_image (TYPE_1__,int,int) ;
 int strcat (char*,char*) ;
 TYPE_1__ threshold_image (TYPE_1__,double) ;

void draw_detections(image im, detection *dets, int num, float thresh, char **names, image **alphabet, int classes)
{
    int i,j;

    for(i = 0; i < num; ++i){
        char labelstr[4096] = {0};
        int class = -1;
        for(j = 0; j < classes; ++j){
            if (dets[i].prob[j] > thresh){
                if (class < 0) {
                    strcat(labelstr, names[j]);
                    class = j;
                } else {
                    strcat(labelstr, ", ");
                    strcat(labelstr, names[j]);
                }
                printf("%s: %.0f%%\n", names[j], dets[i].prob[j]*100);
            }
        }
        if(class >= 0){
            int width = im.h * .006;
            int offset = class*123457 % classes;
            float red = get_color(2,offset,classes);
            float green = get_color(1,offset,classes);
            float blue = get_color(0,offset,classes);
            float rgb[3];



            rgb[0] = red;
            rgb[1] = green;
            rgb[2] = blue;
            box b = dets[i].bbox;


            int left = (b.x-b.w/2.)*im.w;
            int right = (b.x+b.w/2.)*im.w;
            int top = (b.y-b.h/2.)*im.h;
            int bot = (b.y+b.h/2.)*im.h;

            if(left < 0) left = 0;
            if(right > im.w-1) right = im.w-1;
            if(top < 0) top = 0;
            if(bot > im.h-1) bot = im.h-1;

            draw_box_width(im, left, top, right, bot, width, red, green, blue);
            if (alphabet) {
                image label = get_label(alphabet, labelstr, (im.h*.03));
                draw_label(im, top + width, left, label, rgb);
                free_image(label);
            }
            if (dets[i].mask){
                image mask = float_to_image(14, 14, 1, dets[i].mask);
                image resized_mask = resize_image(mask, b.w*im.w, b.h*im.h);
                image tmask = threshold_image(resized_mask, .5);
                embed_image(tmask, im, left, top);
                free_image(mask);
                free_image(resized_mask);
                free_image(tmask);
            }
        }
    }
}

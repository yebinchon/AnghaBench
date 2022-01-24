#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {double h; int w; } ;
typedef  TYPE_1__ image ;
struct TYPE_22__ {int x; int w; int y; int h; } ;
struct TYPE_21__ {float* prob; scalar_t__ mask; TYPE_3__ bbox; } ;
typedef  TYPE_2__ detection ;
typedef  TYPE_3__ box ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int,int,int,int,int,float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int,int,TYPE_1__,float*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,int,int) ; 
 TYPE_1__ FUNC3 (int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__) ; 
 float FUNC5 (int,int,int) ; 
 TYPE_1__ FUNC6 (TYPE_1__**,char*,double) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 TYPE_1__ FUNC8 (TYPE_1__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 TYPE_1__ FUNC10 (TYPE_1__,double) ; 

void FUNC11(image im, detection *dets, int num, float thresh, char **names, image **alphabet, int classes)
{
    int i,j;

    for(i = 0; i < num; ++i){
        char labelstr[4096] = {0};
        int class = -1;
        for(j = 0; j < classes; ++j){
            if (dets[i].prob[j] > thresh){
                if (class < 0) {
                    FUNC9(labelstr, names[j]);
                    class = j;
                } else {
                    FUNC9(labelstr, ", ");
                    FUNC9(labelstr, names[j]);
                }
                FUNC7("%s: %.0f%%\n", names[j], dets[i].prob[j]*100);
            }
        }
        if(class >= 0){
            int width = im.h * .006;

            /*
               if(0){
               width = pow(prob, 1./2.)*10+1;
               alphabet = 0;
               }
             */

            //printf("%d %s: %.0f%%\n", i, names[class], prob*100);
            int offset = class*123457 % classes;
            float red = FUNC5(2,offset,classes);
            float green = FUNC5(1,offset,classes);
            float blue = FUNC5(0,offset,classes);
            float rgb[3];

            //width = prob*20+2;

            rgb[0] = red;
            rgb[1] = green;
            rgb[2] = blue;
            box b = dets[i].bbox;
            //printf("%f %f %f %f\n", b.x, b.y, b.w, b.h);

            int left  = (b.x-b.w/2.)*im.w;
            int right = (b.x+b.w/2.)*im.w;
            int top   = (b.y-b.h/2.)*im.h;
            int bot   = (b.y+b.h/2.)*im.h;

            if(left < 0) left = 0;
            if(right > im.w-1) right = im.w-1;
            if(top < 0) top = 0;
            if(bot > im.h-1) bot = im.h-1;

            FUNC0(im, left, top, right, bot, width, red, green, blue);
            if (alphabet) {
                image label = FUNC6(alphabet, labelstr, (im.h*.03));
                FUNC1(im, top + width, left, label, rgb);
                FUNC4(label);
            }
            if (dets[i].mask){
                image mask = FUNC3(14, 14, 1, dets[i].mask);
                image resized_mask = FUNC8(mask, b.w*im.w, b.h*im.h);
                image tmask = FUNC10(resized_mask, .5);
                FUNC2(tmask, im, left, top);
                FUNC4(mask);
                FUNC4(resized_mask);
                FUNC4(tmask);
            }
        }
    }
}
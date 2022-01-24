#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int c; int h; int w; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int,int,int,float) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 float FUNC2 (TYPE_1__,int,int,int) ; 
 TYPE_1__ FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int,int,int,float) ; 

image FUNC5(image im, int w, int h)
{
    image resized = FUNC3(w, h, im.c);   
    image part = FUNC3(w, im.h, im.c);
    int r, c, k;
    float w_scale = (float)(im.w - 1) / (w - 1);
    float h_scale = (float)(im.h - 1) / (h - 1);
    for(k = 0; k < im.c; ++k){
        for(r = 0; r < im.h; ++r){
            for(c = 0; c < w; ++c){
                float val = 0;
                if(c == w-1 || im.w == 1){
                    val = FUNC2(im, im.w-1, r, k);
                } else {
                    float sx = c*w_scale;
                    int ix = (int) sx;
                    float dx = sx - ix;
                    val = (1 - dx) * FUNC2(im, ix, r, k) + dx * FUNC2(im, ix+1, r, k);
                }
                FUNC4(part, c, r, k, val);
            }
        }
    }
    for(k = 0; k < im.c; ++k){
        for(r = 0; r < h; ++r){
            float sy = r*h_scale;
            int iy = (int) sy;
            float dy = sy - iy;
            for(c = 0; c < w; ++c){
                float val = (1-dy) * FUNC2(part, c, iy, k);
                FUNC4(resized, c, r, k, val);
            }
            if(r == h-1 || im.h == 1) continue;
            for(c = 0; c < w; ++c){
                float val = dy * FUNC2(part, c, iy+1, k);
                FUNC0(resized, c, r, k, val);
            }
        }
    }

    FUNC1(part);
    return resized;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int c; int h; int w; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 float FUNC1 (TYPE_1__,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int,int,int,float) ; 
 float FUNC3 (float,float,float) ; 
 float FUNC4 (float,float,float) ; 

void FUNC5(image im)
{
    FUNC0(im.c == 3);
    int i, j;
    float r, g, b;
    float h, s, v;
    for(j = 0; j < im.h; ++j){
        for(i = 0; i < im.w; ++i){
            r = FUNC1(im, i , j, 0);
            g = FUNC1(im, i , j, 1);
            b = FUNC1(im, i , j, 2);
            float max = FUNC3(r,g,b);
            float min = FUNC4(r,g,b);
            float delta = max - min;
            v = max;
            if(max == 0){
                s = 0;
                h = 0;
            }else{
                s = delta/max;
                if(r == max){
                    h = (g - b) / delta;
                } else if (g == max) {
                    h = 2 + (b - r) / delta;
                } else {
                    h = 4 + (r - g) / delta;
                }
                if (h < 0) h += 6;
                h = h/6.;
            }
            FUNC2(im, i, j, 0, h);
            FUNC2(im, i, j, 1, s);
            FUNC2(im, i, j, 2, v);
        }
    }
}
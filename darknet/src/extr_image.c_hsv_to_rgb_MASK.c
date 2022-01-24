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
 int FUNC1 (float) ; 
 int FUNC2 (TYPE_1__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int,int,int,float) ; 

void FUNC4(image im)
{
    FUNC0(im.c == 3);
    int i, j;
    float r, g, b;
    float h, s, v;
    float f, p, q, t;
    for(j = 0; j < im.h; ++j){
        for(i = 0; i < im.w; ++i){
            h = 6 * FUNC2(im, i , j, 0);
            s = FUNC2(im, i , j, 1);
            v = FUNC2(im, i , j, 2);
            if (s == 0) {
                r = g = b = v;
            } else {
                int index = FUNC1(h);
                f = h - index;
                p = v*(1-s);
                q = v*(1-s*f);
                t = v*(1-s*(1-f));
                if(index == 0){
                    r = v; g = t; b = p;
                } else if(index == 1){
                    r = q; g = v; b = p;
                } else if(index == 2){
                    r = p; g = v; b = t;
                } else if(index == 3){
                    r = p; g = q; b = v;
                } else if(index == 4){
                    r = t; g = p; b = v;
                } else {
                    r = v; g = p; b = q;
                }
            }
            FUNC3(im, i, j, 0, r);
            FUNC3(im, i, j, 1, g);
            FUNC3(im, i, j, 2, b);
        }
    }
}
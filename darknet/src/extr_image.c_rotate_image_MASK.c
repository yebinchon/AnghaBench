#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int w; int h; int c; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 float FUNC0 (TYPE_1__,float,float,int) ; 
 int FUNC1 (float) ; 
 TYPE_1__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int,int,int,float) ; 
 int FUNC4 (float) ; 

image FUNC5(image im, float rad)
{
    int x, y, c;
    float cx = im.w/2.;
    float cy = im.h/2.;
    image rot = FUNC2(im.w, im.h, im.c);
    for(c = 0; c < im.c; ++c){
        for(y = 0; y < im.h; ++y){
            for(x = 0; x < im.w; ++x){
                float rx = FUNC1(rad)*(x-cx) - FUNC4(rad)*(y-cy) + cx;
                float ry = FUNC4(rad)*(x-cx) + FUNC1(rad)*(y-cy) + cy;
                float val = FUNC0(im, rx, ry, c);
                FUNC3(rot, x, y, c, val);
            }
        }
    }
    return rot;
}
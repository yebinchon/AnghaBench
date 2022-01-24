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
struct TYPE_7__ {int c; scalar_t__ w; scalar_t__ h; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 float FUNC1 (TYPE_1__,int,int,int) ; 
 TYPE_1__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int,int,int,float) ; 

image FUNC4(image im, int dx, int dy, int w, int h)
{
    image cropped = FUNC2(w, h, im.c);
    int i, j, k;
    for(k = 0; k < im.c; ++k){
        for(j = 0; j < h; ++j){
            for(i = 0; i < w; ++i){
                int r = j + dy;
                int c = i + dx;
                float val = 0;
                r = FUNC0(r, 0, im.h-1);
                c = FUNC0(c, 0, im.w-1);
                val = FUNC1(im, c, r, k);
                FUNC3(cropped, i, j, k, val);
            }
        }
    }
    return cropped;
}
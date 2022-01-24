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
struct TYPE_5__ {int h; int w; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 float FUNC0 (TYPE_1__,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int,int,int,float) ; 

void FUNC2(image im, int c, float v)
{
    int i, j;
    for(j = 0; j < im.h; ++j){
        for(i = 0; i < im.w; ++i){
            float pix = FUNC0(im, i, j, c);
            pix = pix+v;
            FUNC1(im, i, j, c, pix);
        }
    }
}
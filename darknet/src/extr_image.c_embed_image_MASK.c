#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int c; int h; int w; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 float FUNC0 (TYPE_1__,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int,int,int,float) ; 

void FUNC2(image source, image dest, int dx, int dy)
{
    int x,y,k;
    for(k = 0; k < source.c; ++k){
        for(y = 0; y < source.h; ++y){
            for(x = 0; x < source.w; ++x){
                float val = FUNC0(source, x,y,k);
                FUNC1(dest, dx+x, dy+y, k, val);
            }
        }
    }
}
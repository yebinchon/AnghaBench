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
 float FUNC0 (TYPE_1__,int,int,int) ; 
 TYPE_1__ FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int,int,int,float) ; 

image FUNC3(image a, int border)
{
    image b = FUNC1(a.w + 2*border, a.h + 2*border, a.c);
    int x,y,k;
    for(k = 0; k < b.c; ++k){
        for(y = 0; y < b.h; ++y){
            for(x = 0; x < b.w; ++x){
                float val = FUNC0(a, x - border, y - border, k);
                if(x - border < 0 || x - border >= a.w || y - border < 0 || y - border >= a.h) val = 1;
                FUNC2(b, x, y, k, val);
            }
        }
    }
    return b;
}
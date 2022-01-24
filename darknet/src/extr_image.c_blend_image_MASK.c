#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int w; int h; int c; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__,int,int,int) ; 
 TYPE_1__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int,int,int,float) ; 

image FUNC4(image fore, image back, float alpha)
{
    FUNC0(fore.w == back.w && fore.h == back.h && fore.c == back.c);
    image blend = FUNC2(fore.w, fore.h, fore.c);
    int i, j, k;
    for(k = 0; k < fore.c; ++k){
        for(j = 0; j < fore.h; ++j){
            for(i = 0; i < fore.w; ++i){
                float val = alpha * FUNC1(fore, i, j, k) + 
                    (1 - alpha)* FUNC1(back, i, j, k);
                FUNC3(blend, i, j, k, val);
            }
        }
    }
    return blend;
}
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

void FUNC3(image im)
{
    FUNC0(im.c == 3);
    int i, j;
    float r, g, b;
    float y, u, v;
    for(j = 0; j < im.h; ++j){
        for(i = 0; i < im.w; ++i){
            r = FUNC1(im, i , j, 0);
            g = FUNC1(im, i , j, 1);
            b = FUNC1(im, i , j, 2);

            y = .299*r + .587*g + .114*b;
            u = -.14713*r + -.28886*g + .436*b;
            v = .615*r + -.51499*g + -.10001*b;

            FUNC2(im, i, j, 0, y);
            FUNC2(im, i, j, 1, u);
            FUNC2(im, i, j, 2, v);
        }
    }
}
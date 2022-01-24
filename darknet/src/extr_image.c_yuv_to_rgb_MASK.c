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
            y = FUNC1(im, i , j, 0);
            u = FUNC1(im, i , j, 1);
            v = FUNC1(im, i , j, 2);

            r = y + 1.13983*v;
            g = y + -.39465*u + -.58060*v;
            b = y + 2.03211*u;

            FUNC2(im, i, j, 0, r);
            FUNC2(im, i, j, 1, g);
            FUNC2(im, i, j, 2, b);
        }
    }
}
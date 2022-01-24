#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int w; int h; int c; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

image FUNC4(int w, int h, int c)
{
    image im = FUNC1(w, h, c);
    int i;
    for(i = 0; i < im.w*im.h*im.c; ++i){
        im.data[i] = FUNC2();
    }
    float mag = FUNC0(im.data, im.w*im.h*im.c);
    FUNC3(im.data, im.w*im.h*im.c, 1./mag);
    return im;
}
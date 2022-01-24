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
struct TYPE_6__ {int w; int h; float* data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 

void FUNC3(image im, float hue)
{
    FUNC2(im);
    int i;
    for(i = 0; i < im.w*im.h; ++i){
        im.data[i] = im.data[i] + hue;
        if (im.data[i] > 1) im.data[i] -= 1;
        if (im.data[i] < 0) im.data[i] += 1;
    }
    FUNC1(im);
    FUNC0(im);
}
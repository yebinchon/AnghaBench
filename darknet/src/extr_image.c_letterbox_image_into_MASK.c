#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int w; int h; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 TYPE_1__ FUNC2 (TYPE_1__,int,int) ; 

void FUNC3(image im, int w, int h, image boxed)
{
    int new_w = im.w;
    int new_h = im.h;
    if (((float)w/im.w) < ((float)h/im.h)) {
        new_w = w;
        new_h = (im.h * w)/im.w;
    } else {
        new_h = h;
        new_w = (im.w * h)/im.h;
    }
    image resized = FUNC2(im, new_w, new_h);
    FUNC0(resized, boxed, (w-new_w)/2, (h-new_h)/2); 
    FUNC1(resized);
}
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
 TYPE_1__ FUNC0 (TYPE_1__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 TYPE_1__ FUNC2 (TYPE_1__,int,int) ; 

image FUNC3(image im, int w, int h)
{
    int m = (im.w < im.h) ? im.w : im.h;   
    image c = FUNC0(im, (im.w - m) / 2, (im.h - m)/2, m, m);
    image r = FUNC2(c, w, h);
    FUNC1(c);
    return r;
}
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
struct TYPE_7__ {int w; int h; int c; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__,int /*<<< orphan*/ ,int,int,int) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 

int FUNC4(image a, image b, int min, int max)
{
    if(min == max) return min;
    int mid = FUNC2((min + max) / 2.);
    image c1 = FUNC0(b, 0, mid, b.w, b.h);
    image c2 = FUNC0(b, 0, mid+1, b.w, b.h);
    float d1 = FUNC1(c1.data, a.data, a.w*a.h*a.c, 10);
    float d2 = FUNC1(c2.data, a.data, a.w*a.h*a.c, 10);
    FUNC3(c1);
    FUNC3(c2);
    if(d1 < d2) return FUNC4(a, b, min, mid);
    else return FUNC4(a, b, mid+1, max);
}
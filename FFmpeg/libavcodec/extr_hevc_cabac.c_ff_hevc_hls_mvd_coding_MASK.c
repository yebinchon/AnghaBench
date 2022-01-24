#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* HEVClc; } ;
struct TYPE_10__ {void* y; void* x; } ;
struct TYPE_11__ {TYPE_1__ mvd; } ;
struct TYPE_12__ {TYPE_2__ pu; } ;
typedef  TYPE_3__ HEVCLocalContext ;
typedef  TYPE_4__ HEVCContext ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 void* FUNC2 (TYPE_4__*) ; 
 void* FUNC3 (TYPE_4__*) ; 

void FUNC4(HEVCContext *s, int x0, int y0, int log2_cb_size)
{
    HEVCLocalContext *lc = s->HEVClc;
    int x = FUNC0(s);
    int y = FUNC0(s);

    if (x)
        x += FUNC1(s);
    if (y)
        y += FUNC1(s);

    switch (x) {
    case 2: lc->pu.mvd.x = FUNC2(s);           break;
    case 1: lc->pu.mvd.x = FUNC3(s); break;
    case 0: lc->pu.mvd.x = 0;                       break;
    }

    switch (y) {
    case 2: lc->pu.mvd.y = FUNC2(s);           break;
    case 1: lc->pu.mvd.y = FUNC3(s); break;
    case 0: lc->pu.mvd.y = 0;                       break;
    }
}
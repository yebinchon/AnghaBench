#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float dx; float dy; float dw; float dh; } ;
typedef  TYPE_1__ dbox ;
struct TYPE_9__ {double member_0; double member_1; int member_2; int member_3; } ;
typedef  TYPE_2__ box ;

/* Variables and functions */
 float FUNC0 (TYPE_2__,TYPE_2__) ; 
 TYPE_1__ FUNC1 (TYPE_2__,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (char*,float,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5()
{
    FUNC3();
    FUNC4();
    box a = {0, 0, 1, 1};
    box dxa= {0+.00001, 0, 1, 1};
    box dya= {0, 0+.00001, 1, 1};
    box dwa= {0, 0, 1+.00001, 1};
    box dha= {0, 0, 1, 1+.00001};

    box b = {.5, 0, .2, .2};

    float iou = FUNC0(a,b);
    iou = (1-iou)*(1-iou);
    FUNC2("%f\n", iou);
    dbox d = FUNC1(a, b);
    FUNC2("%f %f %f %f\n", d.dx, d.dy, d.dw, d.dh);

    float xiou = FUNC0(dxa, b);
    float yiou = FUNC0(dya, b);
    float wiou = FUNC0(dwa, b);
    float hiou = FUNC0(dha, b);
    xiou = ((1-xiou)*(1-xiou) - iou)/(.00001);
    yiou = ((1-yiou)*(1-yiou) - iou)/(.00001);
    wiou = ((1-wiou)*(1-wiou) - iou)/(.00001);
    hiou = ((1-hiou)*(1-hiou) - iou)/(.00001);
    FUNC2("manual %f %f %f %f\n", xiou, yiou, wiou, hiou);
}
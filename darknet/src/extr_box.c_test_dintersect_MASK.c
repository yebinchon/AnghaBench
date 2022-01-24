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
 int /*<<< orphan*/  FUNC2 (char*,float,float,float,float) ; 

void FUNC3()
{
    box a = {0, 0, 1, 1};
    box dxa= {0+.0001, 0, 1, 1};
    box dya= {0, 0+.0001, 1, 1};
    box dwa= {0, 0, 1+.0001, 1};
    box dha= {0, 0, 1, 1+.0001};

    box b = {.5, .5, .2, .2};
    dbox di = FUNC1(a,b);
    FUNC2("Inter: %f %f %f %f\n", di.dx, di.dy, di.dw, di.dh);
    float inter =  FUNC0(a, b);
    float xinter = FUNC0(dxa, b);
    float yinter = FUNC0(dya, b);
    float winter = FUNC0(dwa, b);
    float hinter = FUNC0(dha, b);
    xinter = (xinter - inter)/(.0001);
    yinter = (yinter - inter)/(.0001);
    winter = (winter - inter)/(.0001);
    hinter = (hinter - inter)/(.0001);
    FUNC2("Inter Manual %f %f %f %f\n", xinter, yinter, winter, hinter);
}
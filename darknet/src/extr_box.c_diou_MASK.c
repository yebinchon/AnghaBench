#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int dx; int dy; int dw; int dh; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ dbox ;
struct TYPE_17__ {int x; int y; int w; int h; } ;
typedef  TYPE_2__ box ;

/* Variables and functions */
 float FUNC0 (TYPE_2__,TYPE_2__) ; 
 float FUNC1 (TYPE_2__,TYPE_2__) ; 
 TYPE_1__ FUNC2 (TYPE_2__,TYPE_2__) ; 
 TYPE_1__ FUNC3 (TYPE_2__,TYPE_2__) ; 
 int FUNC4 (int,int) ; 

dbox FUNC5(box a, box b)
{
    float u = FUNC1(a,b);
    float i = FUNC0(a,b);
    dbox di = FUNC2(a,b);
    dbox du = FUNC3(a,b);
    dbox dd = {0,0,0,0};

    if(i <= 0 || 1) {
        dd.dx = b.x - a.x;
        dd.dy = b.y - a.y;
        dd.dw = b.w - a.w;
        dd.dh = b.h - a.h;
        return dd;
    }

    dd.dx = 2*FUNC4((1-(i/u)),1)*(di.dx*u - du.dx*i)/(u*u);
    dd.dy = 2*FUNC4((1-(i/u)),1)*(di.dy*u - du.dy*i)/(u*u);
    dd.dw = 2*FUNC4((1-(i/u)),1)*(di.dw*u - du.dw*i)/(u*u);
    dd.dh = 2*FUNC4((1-(i/u)),1)*(di.dh*u - du.dh*i)/(u*u);
    return dd;
}
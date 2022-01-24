#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {float dw; float dx; float dh; float dy; } ;
typedef  TYPE_1__ dbox ;
struct TYPE_10__ {int /*<<< orphan*/  h; int /*<<< orphan*/  y; int /*<<< orphan*/  w; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ box ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_2__,TYPE_2__) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

dbox FUNC2(box a, box b)
{
    float w = FUNC1(a.x, a.w, b.x, b.w);
    float h = FUNC1(a.y, a.h, b.y, b.h);
    dbox dover = FUNC0(a, b);
    dbox di;

    di.dw = dover.dw*h;
    di.dx = dover.dx*h;
    di.dh = dover.dh*w;
    di.dy = dover.dy*w;

    return di;
}
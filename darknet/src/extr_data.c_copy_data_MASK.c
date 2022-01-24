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
struct TYPE_4__ {void* y; void* X; int /*<<< orphan*/  boxes; int /*<<< orphan*/  num_boxes; scalar_t__ shallow; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

data FUNC1(data d)
{
    data c = {0};
    c.w = d.w;
    c.h = d.h;
    c.shallow = 0;
    c.num_boxes = d.num_boxes;
    c.boxes = d.boxes;
    c.X = FUNC0(d.X);
    c.y = FUNC0(d.y);
    return c;
}
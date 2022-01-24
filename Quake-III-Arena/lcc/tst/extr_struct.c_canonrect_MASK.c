#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* y; void* x; } ;
struct TYPE_7__ {void* y; void* x; } ;
struct TYPE_8__ {TYPE_1__ pt2; TYPE_2__ pt1; } ;
typedef  TYPE_3__ rect ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 void* FUNC1 (void*,void*) ; 

rect FUNC2(rect r) {		/* canonicalize rectangle coordinates */
	rect temp;

	temp.pt1.x = FUNC1(r.pt1.x, r.pt2.x);
	temp.pt1.y = FUNC1(r.pt1.y, r.pt2.y);
	temp.pt2.x = FUNC0(r.pt1.x, r.pt2.x);
	temp.pt2.y = FUNC0(r.pt1.y, r.pt2.y);
	return temp;
}
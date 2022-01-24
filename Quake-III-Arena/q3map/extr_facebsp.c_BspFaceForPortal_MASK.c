#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* onnode; int /*<<< orphan*/  winding; } ;
typedef  TYPE_2__ portal_t ;
struct TYPE_9__ {int planenum; int /*<<< orphan*/  w; } ;
typedef  TYPE_3__ bspface_t ;
struct TYPE_7__ {int planenum; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

bspface_t *FUNC2( portal_t *p ) {
	bspface_t	*f;

	f = FUNC0();
	f->w = FUNC1( p->winding );
	f->planenum = p->onnode->planenum & ~1;

	return f;
}
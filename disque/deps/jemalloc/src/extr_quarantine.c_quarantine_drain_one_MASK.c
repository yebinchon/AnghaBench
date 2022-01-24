#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_4__ {size_t first; int lg_maxobjs; int /*<<< orphan*/  curobjs; int /*<<< orphan*/  curbytes; TYPE_2__* objs; } ;
typedef  TYPE_1__ quarantine_t ;
struct TYPE_5__ {scalar_t__ usize; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ quarantine_obj_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(tsd_t *tsd, quarantine_t *quarantine)
{
	quarantine_obj_t *obj = &quarantine->objs[quarantine->first];
	FUNC1(obj->usize == FUNC3(obj->ptr, config_prof));
	FUNC2(tsd, obj->ptr, NULL, false);
	quarantine->curbytes -= obj->usize;
	quarantine->curobjs--;
	quarantine->first = (quarantine->first + 1) & ((FUNC0(1) <<
	    quarantine->lg_maxobjs) - 1);
}
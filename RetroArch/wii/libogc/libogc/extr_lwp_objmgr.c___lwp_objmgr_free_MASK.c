#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  inactives_cnt; int /*<<< orphan*/  inactives; } ;
typedef  TYPE_1__ lwp_objinfo ;
struct TYPE_6__ {int /*<<< orphan*/ * information; int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ lwp_obj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(lwp_objinfo *info,lwp_obj *object)
{
	u32 level;

	FUNC0(level);
	FUNC2(&info->inactives,&object->node);
	object->information	= NULL;
	info->inactives_cnt++;
	FUNC1(level);
}
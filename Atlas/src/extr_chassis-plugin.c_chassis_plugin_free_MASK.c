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
struct TYPE_4__ {struct TYPE_4__* version; scalar_t__ module; struct TYPE_4__* name; struct TYPE_4__* option_grp_name; } ;
typedef  TYPE_1__ chassis_plugin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(chassis_plugin *p) {
	if (p->option_grp_name) FUNC0(p->option_grp_name);
	if (p->name) FUNC0(p->name);
	if (p->module) FUNC1(p->module);
	if (p->version) FUNC0(p->version);

	FUNC0(p);
}
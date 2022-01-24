#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  config; int /*<<< orphan*/ * (* get_options ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ chassis_plugin ;
typedef  int /*<<< orphan*/  GOptionEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

GOptionEntry *FUNC2(chassis_plugin *p) {
	GOptionEntry * options;

	if (!p->get_options) return NULL;

	if (NULL == (options = p->get_options(p->config))) {
		FUNC0("adding config options for module '%s' failed", p->name);
	}

	return options;
}
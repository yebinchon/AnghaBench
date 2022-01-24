#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  itemDef_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* startBackgroundTrack ) (char const*,char const*) ;int /*<<< orphan*/  (* stopBackgroundTrack ) () ;} ;

/* Variables and functions */
 TYPE_1__* DC ; 
 scalar_t__ FUNC0 (char**,char const**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 

void FUNC3(itemDef_t *item, char **args) {
	const char *val;
	if (FUNC0(args, &val)) {
		DC->stopBackgroundTrack();
		DC->startBackgroundTrack(val, val);
	}
}
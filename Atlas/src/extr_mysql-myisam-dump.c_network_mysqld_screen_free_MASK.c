#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* fields; } ;
typedef  TYPE_1__ network_mysqld_screen ;
typedef  size_t guint ;
struct TYPE_6__ {size_t len; int /*<<< orphan*/ * pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(network_mysqld_screen *screen) {
	guint i;
	if (!screen) return;

	for (i = 0; i < screen->fields->len; i++) {
		FUNC2(screen->fields->pdata[i]);
	}
	FUNC1(screen->fields, TRUE);

	FUNC0(screen);
}
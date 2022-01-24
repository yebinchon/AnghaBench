#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_5__ {int /*<<< orphan*/  hooks; } ;
typedef  TYPE_1__ chassis_shutdown_hooks_t ;
typedef  int /*<<< orphan*/  chassis_shutdown_hook_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

gboolean FUNC5(chassis_shutdown_hooks_t *hooks,
		const char *key, gsize key_len,
		chassis_shutdown_hook_t *hook) {
	gboolean is_inserted = FALSE;

	FUNC0(hooks);
	if (NULL == FUNC3(hooks->hooks, key, key_len)) {
		FUNC2(hooks->hooks, FUNC4(key, key_len), hook);
		is_inserted = TRUE;
	}
	FUNC1(hooks);

	return is_inserted;
}
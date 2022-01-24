#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  chassis_options_t ;
typedef  int /*<<< orphan*/  chassis_option_t ;
typedef  int /*<<< orphan*/  GOptionArg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(chassis_options_t *opts, 
		const char *long_name,
		gchar short_name,
		gint flags,
		GOptionArg arg,
		gpointer   arg_data,
		const char *description,
		const char *arg_description) {
	chassis_option_t *opt;

	opt = FUNC1();
	if (0 != FUNC2(opt,
			long_name,
			short_name,
			flags,
			arg,
			arg_data,
			description,
			arg_description) || 
	    0 != FUNC3(opts, opt)) {
		FUNC0(opt);
		return -1;
	} else {
		return 0;
	}
}
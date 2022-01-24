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
typedef  size_t guint ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_5__ {int /*<<< orphan*/ * option_grp_name; } ;
typedef  TYPE_1__ chassis_plugin ;
struct TYPE_6__ {size_t len; TYPE_1__** pdata; } ;
typedef  TYPE_2__ GPtrArray ;
typedef  int /*<<< orphan*/  GOptionGroup ;
typedef  int /*<<< orphan*/  GOptionEntry ;
typedef  int /*<<< orphan*/  GOptionContext ;
typedef  int /*<<< orphan*/  GKeyFile ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*,char***,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ *) ; 

int FUNC9(GPtrArray *plugins,
		GOptionContext *option_ctx,
		int *argc_p, char ***argv_p,
		GKeyFile *keyfile,
		const char *keyfile_section_name,
		const char *base_dir,
		GError **gerr) {
	guint i;

	for (i = 0; i < plugins->len; i++) {
		GOptionEntry *config_entries;
		chassis_plugin *p = plugins->pdata[i];

		if (NULL != (config_entries = FUNC2(p))) {
			gchar *group_desc = FUNC8("%s-module", p->option_grp_name);
			gchar *help_msg = FUNC8("Show options for the %s-module", p->option_grp_name);
			const gchar *group_name = p->option_grp_name;

			GOptionGroup *option_grp = FUNC7(group_name, group_desc, help_msg, NULL, NULL);
			FUNC6(option_grp, config_entries);
			FUNC4(option_ctx, option_grp);

			FUNC3(help_msg);
			FUNC3(group_desc);

			/* parse the new options */
			if (FALSE == FUNC5(option_ctx, argc_p, argv_p, gerr)) {
				return -1;
			}
	
			if (keyfile) {
				if (FUNC1(keyfile, keyfile_section_name, config_entries)) {
					return -1;
				}
			}

			/* resolve the path names for these config entries */
			FUNC0(base_dir, config_entries); 
		}
	}

	return 0;
}
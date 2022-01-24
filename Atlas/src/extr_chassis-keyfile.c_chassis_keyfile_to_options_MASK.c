#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gdouble ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int gboolean ;
struct TYPE_11__ {scalar_t__ code; int /*<<< orphan*/  message; } ;
struct TYPE_10__ {int arg; int /*<<< orphan*/ * arg_data; scalar_t__ long_name; } ;
typedef  TYPE_1__ GOptionEntry ;
typedef  int /*<<< orphan*/  GKeyFile ;
typedef  TYPE_2__ GError ;

/* Variables and functions */
 scalar_t__ G_KEY_FILE_ERROR_KEY_NOT_FOUND ; 
#define  G_OPTION_ARG_DOUBLE 134 
#define  G_OPTION_ARG_FILENAME 133 
#define  G_OPTION_ARG_FILENAME_ARRAY 132 
#define  G_OPTION_ARG_INT 131 
#define  G_OPTION_ARG_NONE 130 
#define  G_OPTION_ARG_STRING 129 
#define  G_OPTION_ARG_STRING_ARRAY 128 
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(GKeyFile *keyfile, const gchar *ini_group_name, GOptionEntry *config_entries) {
	GError *gerr = NULL;
	int ret = 0;
	int i, j;
	
	/* all the options are in the group for "mysql-proxy" */

	if (!keyfile) return -1;
	if (!FUNC7(keyfile, ini_group_name)) return 0;

	/* set the defaults */
	for (i = 0; config_entries[i].long_name; i++) {
		GOptionEntry *entry = &(config_entries[i]);
		gchar *arg_string;
		gchar **arg_string_array;
		gboolean arg_bool = 0;
		gint arg_int = 0;
		gdouble arg_double = 0;
		gsize len = 0;

		switch (entry->arg) {
		case G_OPTION_ARG_FILENAME:
		case G_OPTION_ARG_STRING: 
			/* is this option set already */
			if (NULL == entry->arg_data || NULL != *(gchar **)(entry->arg_data)) break;

			arg_string = FUNC5(keyfile, ini_group_name, entry->long_name, &gerr);
			if (!gerr) {
				/* strip trailing spaces */
				*(gchar **)(entry->arg_data) = FUNC9(arg_string);
			}
			break;
		case G_OPTION_ARG_FILENAME_ARRAY:
		case G_OPTION_ARG_STRING_ARRAY: 
			/* is this option set already */
			if (NULL == entry->arg_data || NULL != *(gchar ***)(entry->arg_data)) break;

			arg_string_array = FUNC6(keyfile, ini_group_name, entry->long_name, &len, &gerr);
			if (!gerr) {
				for (j = 0; arg_string_array[j]; j++) {
					arg_string_array[j] = FUNC10(arg_string_array[j]);
				}	
				*(gchar ***)(entry->arg_data) = arg_string_array;
			}
			break;
		case G_OPTION_ARG_NONE: 
			arg_bool = FUNC2(keyfile, ini_group_name, entry->long_name, &gerr);
			if (!gerr) {
				*(int *)(entry->arg_data) = arg_bool;
			}
			break;
		case G_OPTION_ARG_INT: 
			arg_int = FUNC4(keyfile, ini_group_name, entry->long_name, &gerr);
			if (!gerr) {
				*(gint *)(entry->arg_data) = arg_int;
			}
			break;
#if GLIB_MAJOR_VERSION >= 2 && GLIB_MINOR_VERSION >= 12 
		case G_OPTION_ARG_DOUBLE: 
			arg_double = g_key_file_get_double(keyfile, ini_group_name, entry->long_name, &gerr);
			if (!gerr) {
				*(gint *)(entry->arg_data) = arg_double;
			}
			break;
#endif
		default:
			FUNC0("%s: (keyfile) the option %d can't be handled", G_STRLOC, entry->arg);
			break;
		}

		if (gerr) {
			if (gerr->code != G_KEY_FILE_ERROR_KEY_NOT_FOUND) {
				FUNC8("%s", gerr->message);
				ret = -1;
			}

			FUNC1(gerr);
			gerr = NULL;
		}
	}

	return ret;
}
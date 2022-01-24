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
typedef  int gint ;
typedef  char gchar ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  entry; int /*<<< orphan*/  key; int /*<<< orphan*/  group; int /*<<< orphan*/  keyfile; int /*<<< orphan*/  button; } ;
typedef  TYPE_1__ YuiFileEntry ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GKeyFile ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int YUI_FILE_ENTRY_BROWSE ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ *,char*,char const*,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  yui_file_entry_browse ; 
 int /*<<< orphan*/  yui_file_entry_changed ; 
 int /*<<< orphan*/  FUNC13 () ; 

GtkWidget * FUNC14(GKeyFile * keyfile, const gchar * group, const gchar * key, gint flags, const gchar * label) {
	GtkWidget * entry;
	YuiFileEntry * yfe;
	gchar * entryText;

	entry = FUNC2(FUNC6(FUNC13(), "spacing", 10,
		"key-file", keyfile, "group", group, "key", key, NULL));
	yfe = FUNC4(entry);

	yfe->flags = flags;

	if (label) {
        	FUNC8(FUNC0(yfe), FUNC12(label), FALSE, FALSE, 0);
	}

        yfe->entry = FUNC10 ();
        FUNC8(FUNC0(yfe), yfe->entry, TRUE, TRUE, 0);

	if (flags & YUI_FILE_ENTRY_BROWSE) {
	        yfe->button = FUNC9 ("Browse");
        	FUNC7(yfe->button, "clicked", FUNC3(yui_file_entry_browse), yfe);
	        FUNC8(FUNC0(yfe), yfe->button, FALSE, FALSE, 0);
	}

	entryText = FUNC5(yfe->keyfile, yfe->group, yfe->key, 0);
	if ( !entryText ) entryText = "";
        FUNC11(FUNC1(yfe->entry), entryText );
        FUNC7(FUNC1(yfe->entry), "changed", FUNC3(yui_file_entry_changed), yfe);

	return entry;
}
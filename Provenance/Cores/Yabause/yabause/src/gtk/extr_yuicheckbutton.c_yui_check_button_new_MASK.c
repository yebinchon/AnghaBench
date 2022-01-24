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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_5__ {int /*<<< orphan*/  key; int /*<<< orphan*/  group; int /*<<< orphan*/  keyfile; } ;
typedef  TYPE_1__ YuiCheckButton ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GKeyFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  yui_check_button_toggled ; 

GtkWidget * FUNC10(const gchar * label, GKeyFile * keyfile, const gchar * group, const gchar * key) {
	GtkWidget * button;
	YuiCheckButton * ycb;
	gboolean current;

	button = FUNC1(FUNC5(FUNC9(),
		"label", label,
		"key-file", keyfile, "group", group, "key", key, NULL));
	ycb = FUNC3(button);

	FUNC7(FUNC0(ycb), TRUE);

	current = FUNC4(ycb->keyfile, ycb->group, ycb->key, NULL);
	FUNC8(FUNC0(ycb), current);

        FUNC6(FUNC0(ycb), "toggled", FUNC2(yui_check_button_toggled), ycb);

	return button;
}
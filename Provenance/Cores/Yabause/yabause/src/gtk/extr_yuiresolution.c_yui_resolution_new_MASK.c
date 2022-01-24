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
typedef  char gchar ;
struct TYPE_3__ {int /*<<< orphan*/  options; int /*<<< orphan*/  group; int /*<<< orphan*/  keyfile; int /*<<< orphan*/  entry_h; int /*<<< orphan*/  entry_w; } ;
typedef  TYPE_1__ YuiResolution ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GKeyFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

GtkWidget* FUNC10(GKeyFile * keyfile, const gchar * group) {
	GtkWidget * widget;
	YuiResolution * yr;
	gchar *widthText, *heightText;

	widget = FUNC2(FUNC6(FUNC9(), "key-file", keyfile, "group", group, NULL));
	yr = FUNC3(widget);

	widthText = FUNC5(yr->keyfile, yr->group, "Width", 0);
	if ( !widthText ) widthText = "";
	heightText = FUNC5(yr->keyfile, yr->group, "Height", 0);
	if ( !heightText ) heightText = "";
	FUNC8(FUNC1(yr->entry_w), widthText );
	FUNC8(FUNC1(yr->entry_h), heightText );
	if (FUNC4(yr->keyfile, yr->group, "Fullscreen", 0) == 1)
		FUNC7(FUNC0(yr->options), 1);
	else if (FUNC4(yr->keyfile, yr->group, "KeepRatio", 0) == 1)
		FUNC7(FUNC0(yr->options), 2);
	else
		FUNC7(FUNC0(yr->options), 0);

	return widget;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * options; int /*<<< orphan*/ * entry_h; int /*<<< orphan*/ * entry_w; } ;
typedef  TYPE_1__ YuiResolution ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int /*<<< orphan*/  yui_resolution_height_changed ; 
 int /*<<< orphan*/  yui_resolution_options_changed ; 
 int /*<<< orphan*/  yui_resolution_width_changed ; 

__attribute__((used)) static void FUNC13(YuiResolution * yr) {
	GtkWidget * label_w;
	GtkWidget * label_h;

	FUNC9 (FUNC2 (yr), 10);

	label_w = FUNC12 ("Width");
	FUNC6(FUNC0(yr), label_w, TRUE, TRUE, 0);

	yr->entry_w = FUNC10 ();
	FUNC11(FUNC3(yr->entry_w), 8);
	FUNC6(FUNC0(yr), yr->entry_w, TRUE, TRUE, 0);

	label_h = FUNC12 ("Height");
	FUNC6(FUNC0(yr), label_h, TRUE, TRUE, 0);

	yr->entry_h = FUNC10 ();
	FUNC11(FUNC3(yr->entry_h), 8);
	FUNC6(FUNC0(yr), yr->entry_h, TRUE, TRUE, 0);

	yr->options = FUNC8();
	FUNC7(FUNC1(yr->options), "Window");
	FUNC7(FUNC1(yr->options), "Fullscreen");
	FUNC7(FUNC1(yr->options), "Keep ratio");
	FUNC6(FUNC0(yr), yr->options, TRUE, TRUE, 0);

	FUNC5(yr->entry_w, "changed", FUNC4(yui_resolution_width_changed), yr);
	FUNC5(yr->entry_h, "changed", FUNC4(yui_resolution_height_changed), yr);
	FUNC5(yr->options, "changed", FUNC4(yui_resolution_options_changed), yr);
}
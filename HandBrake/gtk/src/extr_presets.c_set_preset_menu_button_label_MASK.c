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
struct TYPE_3__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_preset_index_t ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkLabel ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int HB_PRESET_TYPE_CUSTOM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(signal_user_data_t *ud, hb_preset_index_t *path)
{
    char              * fullname, * text;
    const char        * description;
    GtkLabel          * label;
    GtkWidget         * widget;
    GhbValue          * dict;
    int                 type;

    dict = FUNC8(path);
    type = FUNC4(dict, "Type");
    fullname = FUNC9(path, " <span alpha=\"70%\">></span> ", TRUE);
    label = FUNC1(FUNC0(ud->builder, "presets_menu_button_label"));
    text = FUNC3("%s%s", type == HB_PRESET_TYPE_CUSTOM ?
                                   "Custom" : "Official", fullname);
    FUNC6(label, text);
    FUNC2(fullname);
    FUNC2(text);

    description = FUNC5(dict, "PresetDescription");
    widget = FUNC0(ud->builder, "presets_menu_button");
    FUNC7(widget, description);
}
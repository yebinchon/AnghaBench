#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  settings_array; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gint ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkToggleButton ;
typedef  int /*<<< orphan*/  GtkListBox ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC13(signal_user_data_t *ud)
{
    gint count, ii;
    GhbValue *settings;
    GtkWidget *row;
    GtkListBox *list;
    GtkToggleButton *selected;
    gboolean can_select;
    gboolean are_conflicts = FALSE;

    list = FUNC1(FUNC0(ud->builder, "title_add_multiple_list"));
    count = FUNC6(ud->settings_array);
    for (ii = 0; ii < count; ii++)
    {
        row = FUNC3(FUNC8(list, ii));
        selected = FUNC2(FUNC4(row, "title_selected"));

        settings = FUNC5(ud->settings_array, ii);
        can_select = FUNC12(ud->settings_array, ii);
        FUNC7(settings, "title_selected", FALSE);
        FUNC9(selected, FALSE);
        FUNC11(FUNC3(row), can_select);
        are_conflicts |= !can_select;
    }
    FUNC10(ud, are_conflicts);
}
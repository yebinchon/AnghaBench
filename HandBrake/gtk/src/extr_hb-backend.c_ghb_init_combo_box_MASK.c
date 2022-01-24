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
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  G_TYPE_BOOLEAN ; 
 int /*<<< orphan*/  G_TYPE_DOUBLE ; 
 int /*<<< orphan*/  G_TYPE_STRING ; 
 int PANGO_ELLIPSIZE_END ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(GtkComboBox *combo)
{
    GtkListStore *store;
    GtkCellRenderer *cell;

    FUNC4("ghb_init_combo_box()\n");
    // First modify the combobox model to allow greying out of options
    if (combo == NULL)
        return;
    // Store contains:
    // 1 - String to display
    // 2 - bool indicating whether the entry is selectable (grey or not)
    // 3 - String that is used for presets
    // 4 - Int value determined by backend
    store = FUNC13(4, G_TYPE_STRING, G_TYPE_BOOLEAN,
                               G_TYPE_STRING, G_TYPE_DOUBLE);
    FUNC12(combo, FUNC3(store));

    if (!FUNC10(combo))
    {
        FUNC6(FUNC0(combo));
        cell = FUNC1(FUNC9());
        FUNC5(cell, "max-width-chars", 80, NULL);
        FUNC5(cell, "ellipsize", PANGO_ELLIPSIZE_END, NULL);
        FUNC7(FUNC0(combo), cell, FALSE);
        FUNC8(FUNC0(combo), cell,
            "markup", 0, "sensitive", 1, NULL);
    }
    else
    { // Combo box entry
        FUNC11(FUNC2(combo), 0);
    }
}
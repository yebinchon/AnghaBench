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
struct TYPE_5__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkListBox ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC14(signal_user_data_t *ud)
{
    GtkListBox *list_box;
    GhbValue *alist;
    int count, ii;

    FUNC3(ud);

    // Init the AudioList settings if necessary
    alist = FUNC11(ud->settings, "AudioList");
    if (alist == NULL)
    {
        alist = FUNC8();
        FUNC12(ud->settings, "AudioList", alist);
    }

    // Empty the current list
    list_box = FUNC2(FUNC0(ud->builder, "audio_list_default"));
    FUNC9(FUNC1(list_box));

    GtkWidget *widget;
    // Populate with new values
    count = FUNC7(alist);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue *adict;

        adict = FUNC6(alist, ii);
        widget = FUNC10(ud);
        FUNC13(list_box, widget, -1);
        FUNC5(widget, adict);
    }
    // Add row with "Add" button
    widget = FUNC10(ud);
    FUNC4(widget, FALSE);
    FUNC13(list_box, widget, -1);
}
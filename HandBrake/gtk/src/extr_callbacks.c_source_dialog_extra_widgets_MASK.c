#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_7__ {struct TYPE_7__* next; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkComboBoxText ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(
    signal_user_data_t *ud,
    GtkWidget *dialog)
{
    GtkComboBoxText *combo;
    GList *drives, *link;

    FUNC7("source_dialog_extra_widgets ()");
    combo = FUNC2(FUNC0(ud->builder, "source_device"));
    FUNC14(FUNC3(
                FUNC11(FUNC1(combo))));

    link = drives = FUNC5();
    FUNC13 (combo, FUNC4("Not Selected"));
    while (link != NULL)
    {
        gchar *name = FUNC10(link->data);
        FUNC13(combo, name);
        FUNC8(name);
        FUNC6(link->data);
        link = link->next;
    }
    FUNC9(drives);
    FUNC12(FUNC1(combo), 0);
}
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
typedef  int /*<<< orphan*/  signal_user_data_t ;
typedef  scalar_t__ guint ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GtkListBox ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GDK_KEY_Down ; 
 scalar_t__ GDK_KEY_Return ; 
 scalar_t__ GDK_KEY_Up ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean
FUNC8(
    GtkWidget          * widget,
    guint                keyval,
    signal_user_data_t * ud)
{
    GtkWidget     * entry;
    GtkListBoxRow * row;
    GtkListBox    * lb;
    int             index;

    if (keyval != GDK_KEY_Return &&
        keyval != GDK_KEY_Down &&
        keyval != GDK_KEY_Up)
    {
        return FALSE;
    }

    row    = FUNC7(widget);
    lb     = FUNC0(FUNC5(FUNC1(row)));
    index  = FUNC4(row);
    if (keyval == GDK_KEY_Return || keyval == GDK_KEY_Down)
    {
        index++;
    }
    else if (keyval == GDK_KEY_Up && index > 0)
    {
        index--;
    }
    if (index >= 0)
    {
        row = FUNC3(lb, index);
        if (row != NULL)
        {
            entry  = FUNC2(FUNC1(row), "chapter_entry");
            if (entry != NULL)
            {
                FUNC6(entry);
                return TRUE;
            }
        }
    }
    return FALSE;
}
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
typedef  int gint ;
typedef  scalar_t__ gdouble ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC8(
    GtkComboBox *combo,
    gint first_rate,
    gint last_rate)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gdouble ivalue;
    gboolean done = FALSE;

    FUNC2("audio_bitrate_opts_filter ()\n");
    store = FUNC0(FUNC3 (combo));
    if (FUNC6 (FUNC1(store), &iter))
    {
        do
        {
            FUNC5(FUNC1(store), &iter, 3, &ivalue, -1);
            if ((int)ivalue < first_rate || (int)ivalue > last_rate)
            {
                FUNC4(store, &iter, 1, FALSE, -1);
            }
            else
            {
                FUNC4(store, &iter, 1, TRUE, -1);
            }
            done = !FUNC7 (FUNC1(store), &iter);
        } while (!done);
    }
}
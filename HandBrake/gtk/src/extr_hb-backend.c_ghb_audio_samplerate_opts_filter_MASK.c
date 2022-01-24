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
typedef  int /*<<< orphan*/  gint ;
typedef  double gdouble ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,double*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (double,int /*<<< orphan*/ ) ; 

void
FUNC8(GtkComboBox *combo, gint acodec)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gdouble irate;

    store = FUNC0(FUNC2(combo));
    if (!FUNC5( FUNC1(store), &iter))
        return;

    do
    {
        FUNC4(FUNC1(store), &iter, 3, &irate, -1);
        // If irate == 0.0, the item is the "Same as Source" item,
        // so set to TRUE. Otherwise, ask libhb
        FUNC3(store, &iter, 1, irate == 0.0 ? TRUE :
                FUNC7(irate, acodec), -1);
    } while (FUNC6(FUNC1(store), &iter));
}
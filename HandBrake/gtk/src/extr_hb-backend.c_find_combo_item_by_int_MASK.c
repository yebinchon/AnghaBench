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
typedef  scalar_t__ gint ;
typedef  scalar_t__ gdouble ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean
FUNC3(GtkTreeModel *store, gint value, GtkTreeIter *iter)
{
    gdouble ivalue;
    gboolean foundit = FALSE;

    if (FUNC1 (store, iter))
    {
        do
        {
            FUNC0(store, iter, 3, &ivalue, -1);
            if (value == (gint)ivalue)
            {
                foundit = TRUE;
                break;
            }
        } while (FUNC2 (store, iter));
    }
    return foundit;
}
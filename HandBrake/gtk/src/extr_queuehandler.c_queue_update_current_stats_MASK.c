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
struct TYPE_4__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GtkListBox ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC7(signal_user_data_t * ud)
{
    GtkListBox    * lb;
    GtkListBoxRow * row;
    gint            index;
    GhbValue      * queueDict;

    lb  = FUNC1(FUNC0(ud->builder, "queue_list"));
    row = FUNC4(lb);
    if (row != NULL)
    {
        // There is a queue list row selected
        index = FUNC5(row);
        if (index < 0 || index >= FUNC3(ud->queue))
        { // Should never happen
            return;
        }
        queueDict = FUNC2(ud->queue, index);
        FUNC6(queueDict, ud);
    }
}
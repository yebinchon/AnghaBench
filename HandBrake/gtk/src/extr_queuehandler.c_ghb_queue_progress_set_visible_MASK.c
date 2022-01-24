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
struct TYPE_3__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GtkListBox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC7(signal_user_data_t *ud, int index,
                               gboolean visible)
{
    GtkListBox    * lb;
    GtkListBoxRow * row;
    GtkWidget     * progress;

    int count = FUNC4(ud->queue);
    if (index < 0 || index >= count)
    {
        // invalid index
        return;
    }

    lb = FUNC1(FUNC0(ud->builder, "queue_list"));
    row = FUNC5(lb, index);
    if (row == NULL)
    {
        return;
    }
    progress = FUNC3(FUNC2(row), "queue_item_progress");
    FUNC6(progress, visible);
}
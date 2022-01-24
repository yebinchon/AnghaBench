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
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ guint ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GDK_KEY_Delete ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean
FUNC3(GtkListBoxRow * row, guint keyval, signal_user_data_t * ud)
{
    gint            index;

    if (keyval != GDK_KEY_Delete)
        return FALSE;

    if (row != NULL)
    {
        index = FUNC2(row);
        FUNC0(ud, index);
        FUNC1(ud->queue);
        return TRUE;
    }
    return FALSE;
}
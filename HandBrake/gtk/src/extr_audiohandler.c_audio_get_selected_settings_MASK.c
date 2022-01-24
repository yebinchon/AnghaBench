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
struct TYPE_3__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int gint ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GhbValue*
FUNC10(signal_user_data_t *ud, int *index)
{
    GtkTreeView *tv;
    GtkTreePath *tp;
    GtkTreeSelection *ts;
    GtkTreeModel *tm;
    GtkTreeIter ti;
    gint *indices;
    gint row;
    GhbValue *asettings = NULL;
    const GhbValue *audio_list;

    tv = FUNC1(FUNC0(ud->builder, "audio_list_view"));
    ts = FUNC9 (tv);
    if (FUNC8(ts, &tm, &ti))
    {
        // Get the row number
        tp = FUNC5 (tm, &ti);
        indices = FUNC7 (tp);
        row = indices[0];
        FUNC6(tp);
        // find audio settings
        if (row < 0) return NULL;

        audio_list = FUNC4(ud->settings);
        if (row >= FUNC3(audio_list))
            return NULL;

        asettings = FUNC2(audio_list, row);
        if (index != NULL)
            *index = row;
    }
    return asettings;
}
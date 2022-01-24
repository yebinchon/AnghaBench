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
struct TYPE_7__ {scalar_t__ index; int /*<<< orphan*/  short_name; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ hb_filter_param_t ;
typedef  size_t gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,double,int) ; 
 TYPE_2__* FUNC10 (int) ; 
 TYPE_2__* FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(signal_user_data_t *ud, const gchar *name,
                 int filter_id, int preset)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gint ii;
    gchar *str;

    if (name == NULL) return;
    GtkComboBox *combo = FUNC1(FUNC0(ud->builder, name));
    store = FUNC2(FUNC6 (combo));
    FUNC8(store);
    hb_filter_param_t * param;
    if (preset)
    {
        param = FUNC10(filter_id);
    }
    else
    {
        param = FUNC11(filter_id);
    }
    for (ii = 0; param != NULL && param[ii].name != NULL; ii++)
    {
        FUNC7(store, &iter);
        str = FUNC4("<small>%s</small>",
                              FUNC5(param[ii].name));
        FUNC9(store, &iter,
                           0, str,
                           1, TRUE,
                           2, param[ii].short_name,
                           3, (double)param[ii].index,
                           -1);
        FUNC3(str);
    }
}
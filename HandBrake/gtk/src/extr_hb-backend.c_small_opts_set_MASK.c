#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_2__ signal_user_data_t ;
typedef  size_t gint ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_7__ {size_t count; TYPE_1__* map; } ;
typedef  TYPE_3__ combo_opts_t ;
struct TYPE_5__ {int /*<<< orphan*/  ivalue; int /*<<< orphan*/  shortOpt; int /*<<< orphan*/  option; } ;
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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(signal_user_data_t *ud, const gchar *name,
               void *vopts, const void* data)
{
    (void)data; // Silence "unused variable" warning
    combo_opts_t *opts = (combo_opts_t*)vopts;
    GtkTreeIter iter;
    GtkListStore *store;
    gint ii;
    gchar *str;

    if (name == NULL || opts == NULL) return;
    GtkComboBox *combo = FUNC1(FUNC0(ud->builder, name));
    store = FUNC2(FUNC6 (combo));
    FUNC8(store);
    for (ii = 0; ii < opts->count; ii++)
    {
        FUNC7(store, &iter);
        str = FUNC4("<small>%s</small>",
                              FUNC5(opts->map[ii].option));
        FUNC9(store, &iter,
                           0, str,
                           1, TRUE,
                           2, opts->map[ii].shortOpt,
                           3, opts->map[ii].ivalue,
                           -1);
        FUNC3(str);
    }
}
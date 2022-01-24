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
struct TYPE_3__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  size_t gint ;
typedef  int /*<<< orphan*/  gdouble ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t SRT_TABLE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * srt_codeset_table ; 

__attribute__((used)) static void
FUNC7(signal_user_data_t *ud, const gchar *name,
                     void *opts, const void* data)
{
    (void)opts; // Silence "unused variable" warning
    (void)data; // Silence "unused variable" warning
    GtkTreeIter iter;
    GtkListStore *store;
    gint ii;

    GtkComboBox *combo = FUNC1(FUNC0(ud->builder, name));
    store = FUNC2(FUNC3 (combo));
    FUNC5(store);
    for (ii = 0; ii < SRT_TABLE_SIZE; ii++)
    {
        FUNC4(store, &iter);
        FUNC6(store, &iter,
                           0, srt_codeset_table[ii],
                           1, TRUE,
                           2, srt_codeset_table[ii],
                           3, (gdouble)ii,
                           -1);
    }
}
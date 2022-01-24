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
typedef  int /*<<< orphan*/  hb_value_t ;
typedef  scalar_t__ gint ;
typedef  double gdouble ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char** FUNC3 (scalar_t__,int) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 scalar_t__ FUNC6 (char const**,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int,char const*,int,double,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(signal_user_data_t *ud, const gchar *name,
                         void *opts, const void* data)
{
    (void)opts; // Silence "unused variable" warning
    (void)data; // Silence "unused variable" warning
    GtkTreeIter     iter;
    GtkListStore  * store;
    gint            ii, jj, count;
    hb_value_t    * presets;
    GtkComboBox   * combo;
    char         ** categories;

    presets = FUNC12();
    count   = FUNC14(presets);

    combo = FUNC1(FUNC0(ud->builder, name));
    store = FUNC2(FUNC7 (combo));
    FUNC9(store);

    categories = FUNC3(count + 1, sizeof(char*));
    for (ii = 0, jj = 0; ii < count; ii++)
    {
        const char * name;
        hb_value_t * folder = FUNC13(presets, ii);

        if (!FUNC15(FUNC11(folder, "Folder")))
        {
            // Only list folders
            continue;
        }

        name = FUNC16(FUNC11(folder, "PresetName"));
        if (name == NULL || name[0] == 0)
        {
            continue;
        }

        if (FUNC6((const char**)categories, name))
        {
            // Category is already in the list
            continue;
        }

        categories[jj++] = FUNC4(name);
        FUNC8(store, &iter);
        FUNC10(store, &iter,
                           0, name,
                           1, TRUE,
                           2, name,
                           3, (gdouble)ii,
                           -1);
    }
    FUNC5(categories);

    FUNC8(store, &iter);
    FUNC10(store, &iter,
                       0, "Add New Category",
                       1, TRUE,
                       2, "new",
                       3, -1.0,
                       -1);
}
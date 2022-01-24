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
struct TYPE_3__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  size_t gint ;
typedef  int /*<<< orphan*/  gdouble ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const* const,int,int /*<<< orphan*/ ,int,char const* const,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 char** FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(signal_user_data_t *ud, const gchar *name,
                     void *opts, const void* data)
{
    (void)opts; // Silence "unused variable" warning
    (void)data; // Silence "unused variable" warning
    GtkTreeIter iter;
    GtkListStore *store;
    gint ii, count = 0;

    // Check if encoder has been set yet.
    // If not, bail
    GhbValue *value = FUNC3(ud->settings, "VideoEncoder");
    if (value == NULL) return;

    int encoder = FUNC4(ud->settings);
    const char * const *levels;
    levels = FUNC10(encoder);

    while (levels && levels[count]) count++;
    GtkWidget *w = FUNC0(ud->builder, "VideoLevel");
    FUNC9(w, count > 0);
    w = FUNC0(ud->builder, "VideoLevelLabel");
    FUNC9(w, count > 0);
    if (count <= 0) return;

    GtkComboBox *combo = FUNC1(FUNC0(ud->builder, name));
    store = FUNC2(FUNC5 (combo));
    FUNC7(store);

    for (ii = 0; ii < count; ii++)
    {
        FUNC6(store, &iter);
        FUNC8(store, &iter,
                           0, levels[ii],
                           1, TRUE,
                           2, levels[ii],
                           3, (gdouble)ii,
                           -1);
    }
}
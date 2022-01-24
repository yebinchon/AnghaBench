#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  list_subtitle; } ;
typedef  TYPE_2__ hb_title_t ;
struct TYPE_8__ {int /*<<< orphan*/  lang; } ;
typedef  TYPE_3__ hb_subtitle_t ;
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
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char*,int,double,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC14(signal_user_data_t *ud, const gchar *name,
                        void *opts, const void* data)
{
    (void)opts;   // Silence "unused variable" warning
    const hb_title_t *title = (const hb_title_t*)data;
    GtkTreeIter iter;
    GtkListStore *store;
    hb_subtitle_t * subtitle;
    gint ii, count = 0;

    GtkComboBox *combo = FUNC1(FUNC0(ud->builder, name));
    store = FUNC2(FUNC6 (combo));
    FUNC9(store);

    if (title != NULL)
    {
        count = FUNC11( title->list_subtitle );
    }
    for (ii = 0; ii < count; ii++)
    {
        gchar *opt;
        char idx[4];

        subtitle = FUNC12(title->list_subtitle, ii);
        opt = FUNC5("%d - %s", ii+1, subtitle->lang);
        FUNC13(idx, 4, "%d", ii);

        FUNC8(store, &iter);
        FUNC10(store, &iter,
                    0, opt,
                    1, TRUE,
                    2, idx,
                    3, (gdouble)ii,
                    -1);
        FUNC4(opt);
    }
    if (count <= 0)
    {
        FUNC8(store, &iter);
        FUNC10(store, &iter,
                           0, FUNC3("None"),
                           1, TRUE,
                           2, "0",
                           3, 0.0,
                           -1);
    }
    FUNC7 (combo, 0);
}
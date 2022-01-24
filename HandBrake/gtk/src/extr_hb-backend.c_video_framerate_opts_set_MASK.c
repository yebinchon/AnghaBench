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
struct TYPE_7__ {char* name; scalar_t__ rate; } ;
typedef  TYPE_2__ hb_rate_t ;
typedef  double gdouble ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,char*,int,double,int) ; 
 TYPE_2__* FUNC10 (TYPE_2__ const*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static void
FUNC12(signal_user_data_t *ud, const gchar *name,
                         void *opts, const void* data)
{
    (void)opts; // Silence "unused variable" warning
    (void)data; // Silence "unused variable" warning
    GtkTreeIter iter;
    GtkListStore *store;

    GtkComboBox *combo = FUNC1(FUNC0(ud->builder, name));
    store = FUNC2(FUNC6 (combo));
    FUNC8(store);
    // Add an item for "Same As Source"
    FUNC7(store, &iter);
    FUNC9(store, &iter,
                       0, FUNC3("Same as source"),
                       1, TRUE,
                       2, "auto",
                       3, 0.0,
                       -1);

    const hb_rate_t *rate;
    for (rate = FUNC10(NULL); rate != NULL;
         rate = FUNC10(rate))
    {
        gchar *desc = "";
        gchar *option;
        if (FUNC11(rate->name, "23.976") == 0)
        {
            desc = FUNC3("(NTSC Film)");
        }
        else if (FUNC11(rate->name, "25") == 0)
        {
            desc = FUNC3("(PAL Film/Video)");
        }
        else if (FUNC11(rate->name, "29.97") == 0)
        {
            desc = FUNC3("(NTSC Video)");
        }
        option = FUNC5 ("%s %s", rate->name, desc);
        FUNC7(store, &iter);
        FUNC9(store, &iter,
                           0, option,
                           1, TRUE,
                           2, rate->name,
                           3, (gdouble)rate->rate,
                           -1);
        FUNC4(option);
    }
}
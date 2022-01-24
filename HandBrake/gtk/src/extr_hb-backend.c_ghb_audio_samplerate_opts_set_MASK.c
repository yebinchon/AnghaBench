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
struct TYPE_4__ {char* name; scalar_t__ rate; } ;
typedef  TYPE_1__ hb_rate_t ;
typedef  double gdouble ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkListStore ;
typedef  int /*<<< orphan*/  GtkComboBox ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char*,int,double,int) ; 
 TYPE_1__* FUNC8 (TYPE_1__ const*) ; 

void
FUNC9(GtkComboBox *combo)
{
    GtkTreeIter iter;
    GtkListStore *store;
    gchar *str;

    store = FUNC0(FUNC4 (combo));
    FUNC6(store);
    // Add an item for "Same As Source"
    FUNC5(store, &iter);
    str = FUNC3("<small>%s</small>", FUNC1("Same as source"));
    FUNC7(store, &iter,
                       0, str,
                       1, TRUE,
                       2, "auto",
                       3, 0.0,
                       -1);
    FUNC2(str);

    const hb_rate_t *rate;
    for (rate = FUNC8(NULL); rate != NULL;
         rate = FUNC8(rate))
    {
        FUNC5(store, &iter);
        str = FUNC3("<small>%s</small>", rate->name);
        FUNC7(store, &iter,
                           0, str,
                           1, TRUE,
                           2, rate->name,
                           3, (gdouble)rate->rate,
                           -1);
        FUNC2(str);
    }
}
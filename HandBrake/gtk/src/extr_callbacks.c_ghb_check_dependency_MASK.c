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
struct TYPE_4__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gint ;
typedef  char gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  scalar_t__ GType ;
typedef  int /*<<< orphan*/  GObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GTK_TYPE_COMBO_BOX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*,scalar_t__*) ; 
 int /*<<< orphan*/ * dep_map ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

void
FUNC18(
    signal_user_data_t *ud,
    GtkWidget *widget,
    const char *alt_name)
{
    GObject *dep_object;
    const gchar *name;
    GhbValue *array, *data;
    gint count, ii;
    const gchar *dep_name;
    GType type;

    if (widget != NULL)
    {
        type = FUNC2(widget);
        if (type == GTK_TYPE_COMBO_BOX)
            if (FUNC12(FUNC0(widget)) < 0) return;
        name = FUNC9(widget);
    }
    else
        name = alt_name;

    FUNC4("ghb_check_dependency() %s", name);

    if (dep_map == NULL) return;
    array = FUNC8(dep_map, name);
    count = FUNC7(array);
    for (ii = 0; ii < count; ii++)
    {
        gboolean sensitive;
        gboolean hide;

        data = FUNC6(array, ii);
        dep_name = FUNC10(data);
        dep_object = FUNC11(ud->builder, dep_name);
        if (dep_object == NULL)
        {
            FUNC5("Failed to find dependent widget %s", dep_name);
            continue;
        }
        sensitive = FUNC3(ud, dep_name, &hide);
        FUNC16(FUNC1(dep_object), sensitive);
        FUNC15(FUNC1(dep_object), sensitive);
        if (!sensitive && hide)
        {
            if (FUNC13(FUNC1(dep_object)))
            {
                FUNC14(FUNC1(dep_object));
            }
        }
        else
        {
            if (!FUNC13(FUNC1(dep_object)))
            {
                FUNC17(FUNC1(dep_object));
            }
        }
    }
}
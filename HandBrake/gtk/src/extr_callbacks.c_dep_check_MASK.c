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
typedef  scalar_t__ gint ;
typedef  scalar_t__ gdouble ;
typedef  char gchar ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GObject ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 char** FUNC5 (char const*,char*,int) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * rev_map ; 
 scalar_t__ FUNC17 (char*,char*) ; 

__attribute__((used)) static gboolean
FUNC18(signal_user_data_t *ud, const gchar *name, gboolean *out_hide)
{
    GtkWidget *widget;
    GObject *dep_object;
    gint ii;
    gint count;
    gboolean result = TRUE;
    GhbValue *array, *data;
    const gchar *widget_name;

    FUNC1("dep_check () %s", name);

    if (rev_map == NULL) return TRUE;
    array = FUNC9(rev_map, name);
    count = FUNC8(array);
    *out_hide = FALSE;
    for (ii = 0; ii < count; ii++)
    {
        data = FUNC7(array, ii);
        widget_name = FUNC12(FUNC7(data, 0));
        widget = FUNC0(ud->builder, widget_name);
        dep_object = FUNC15(ud->builder, name);
        if (widget != NULL && !FUNC16(widget))
        {
            continue;
        }
        if (dep_object == NULL)
        {
            FUNC3("Failed to find widget");
        }
        else
        {
            gchar *value;
            gint jj = 0;
            gchar **values;
            gboolean sensitive = FALSE;
            gboolean die, hide;

            die = FUNC11(FUNC7(data, 2));
            hide = FUNC11(FUNC7(data, 3));
            const char *tmp = FUNC12(FUNC7(data, 1));
            values = FUNC5(tmp, "|", 10);

            if (widget)
                value = FUNC14(widget);
            else
                value = FUNC10(ud->settings, widget_name);
            while (values && values[jj])
            {
                if (values[jj][0] == '>')
                {
                    gdouble dbl = FUNC6 (&values[jj][1], NULL);
                    gdouble dvalue = FUNC13(widget);
                    if (dvalue > dbl)
                    {
                        sensitive = TRUE;
                        break;
                    }
                }
                else if (values[jj][0] == '<')
                {
                    gdouble dbl = FUNC6 (&values[jj][1], NULL);
                    gdouble dvalue = FUNC13(widget);
                    if (dvalue < dbl)
                    {
                        sensitive = TRUE;
                        break;
                    }
                }
                if (FUNC17(values[jj], value) == 0)
                {
                    sensitive = TRUE;
                    break;
                }
                jj++;
            }
            sensitive = die ^ sensitive;
            if (!sensitive)
            {
                result = FALSE;
                *out_hide |= hide;
            }
            FUNC4 (values);
            FUNC2(value);
        }
    }
    return result;
}
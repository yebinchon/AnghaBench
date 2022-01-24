#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int gint ;
typedef  scalar_t__ gdouble ;
typedef  scalar_t__ gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkTextBuffer ;
typedef  scalar_t__ GtkFileChooserAction ;
typedef  int /*<<< orphan*/  GtkEntry ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  scalar_t__ GType ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ GHB_ARRAY ; 
 scalar_t__ GHB_DICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER ; 
 scalar_t__ GTK_FILE_CHOOSER_ACTION_SAVE ; 
 scalar_t__ GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ GTK_TYPE_CHECK_BUTTON ; 
 scalar_t__ GTK_TYPE_CHECK_MENU_ITEM ; 
 scalar_t__ GTK_TYPE_COMBO_BOX ; 
 scalar_t__ GTK_TYPE_ENTRY ; 
 scalar_t__ GTK_TYPE_FILE_CHOOSER_BUTTON ; 
 scalar_t__ GTK_TYPE_LABEL ; 
 scalar_t__ GTK_TYPE_RADIO_BUTTON ; 
 scalar_t__ GTK_TYPE_SCALE ; 
 scalar_t__ GTK_TYPE_SCALE_BUTTON ; 
 scalar_t__ GTK_TYPE_SPIN_BUTTON ; 
 scalar_t__ GTK_TYPE_TEXT_VIEW ; 
 scalar_t__ GTK_TYPE_TOGGLE_BUTTON ; 
 scalar_t__ GTK_TYPE_TOGGLE_TOOL_BUTTON ; 
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 int /*<<< orphan*/  G_FILE_TEST_IS_DIR ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC13 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 scalar_t__* FUNC15 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__*) ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/  const*) ; 
 int FUNC20 (int /*<<< orphan*/  const*) ; 
 scalar_t__* FUNC21 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/ * FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,...) ; 
 scalar_t__ FUNC42 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC44 (scalar_t__*,scalar_t__*) ; 

void
FUNC45(GtkWidget *widget, const GhbValue *value)
{
    GType type;
    gchar *str, *tmp;
    gint ival;
    gdouble dval;

    const char *name = FUNC18(widget);
    type = FUNC22(value);
    if (type == GHB_ARRAY || type == GHB_DICT)
        return;
    if (value == NULL) return;
    str = tmp = FUNC21(value);
    ival = FUNC20(value);
    dval = FUNC19(value);
    type = FUNC12(widget);

    if (str == NULL)
        str = "";

    if (type == GTK_TYPE_ENTRY)
    {
        FUNC17(widget, str);
    }
    else if (type == GTK_TYPE_RADIO_BUTTON)
    {
        if (ival)
            FUNC39(FUNC10(widget), !!ival);
    }
    else if (type == GTK_TYPE_CHECK_BUTTON)
    {
        FUNC39(FUNC10(widget), ival);
    }
    else if (type == GTK_TYPE_TOGGLE_TOOL_BUTTON)
    {
        FUNC40(FUNC11(widget), ival);
    }
    else if (type == GTK_TYPE_TOGGLE_BUTTON)
    {
        FUNC39(FUNC10(widget), ival);
    }
    else if (type == GTK_TYPE_CHECK_MENU_ITEM)
    {
        FUNC24(FUNC1(widget), ival);
    }
    else if (type == GTK_TYPE_COMBO_BOX)
    {
        GtkTreeModel *store;
        GtkTreeIter iter;
        gchar *shortOpt;
        gdouble ivalue;
        gboolean foundit = FALSE;

        store = FUNC26(FUNC2(widget));
        if (FUNC42 (store, &iter))
        {
            do
            {
                FUNC41(store, &iter, 2, &shortOpt, -1);
                if (FUNC44(shortOpt, str) == 0)
                {
                    FUNC28 (
                        FUNC2(widget), &iter);
                    FUNC14(shortOpt);
                    foundit = TRUE;
                    break;
                }
                FUNC14(shortOpt);
            } while (FUNC43 (store, &iter));
        }
        if (!foundit && FUNC42 (store, &iter))
        {
            do
            {
                FUNC41(store, &iter, 3, &ivalue, -1);
                if ((gint)ivalue == ival || ivalue == dval)
                {
                    FUNC28 (
                        FUNC2(widget), &iter);
                    foundit = TRUE;
                    break;
                }
            } while (FUNC43 (store, &iter));
        }
        if (!foundit)
        {
            if (FUNC25(FUNC2(widget)))
            {
                GtkEntry *entry = FUNC3(FUNC23(FUNC0(widget)));
                if (entry)
                {
                    FUNC17(entry, str);
                }
                else
                {
                    FUNC27 (FUNC2(widget), 0);
                }
            }
            else
            {
                FUNC27 (FUNC2(widget), 0);
            }
        }
    }
    else if (type == GTK_TYPE_SPIN_BUTTON)
    {
        FUNC36(FUNC8(widget), dval);
    }
    else if (type == GTK_TYPE_SCALE)
    {
        FUNC34(FUNC6(widget), dval);
    }
    else if (type == GTK_TYPE_SCALE_BUTTON)
    {
        FUNC35(FUNC7(widget), dval);
    }
    else if (type == GTK_TYPE_TEXT_VIEW)
    {
        static int text_view_busy = 0;
        GtkTextBuffer *buffer = FUNC38(
                                                FUNC9(widget));
        if (!text_view_busy)
        {
            text_view_busy = 1;
            FUNC37 (buffer, str, -1);
            text_view_busy = 0;
        }
    }
    else if (type == GTK_TYPE_LABEL)
    {
        FUNC33 (FUNC5(widget), str);
    }
    else if (type == GTK_TYPE_FILE_CHOOSER_BUTTON)
    {
        GtkFileChooserAction act;
        act = FUNC29(FUNC4(widget));

        if (str[0] == 0)
        {
            // Do nothing
            ;
        }
        else if (act == GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER ||
                 act == GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER)
        {
            FUNC31 (FUNC4(widget), str);
        }
        else if (act == GTK_FILE_CHOOSER_ACTION_SAVE)
        {
            FUNC31 (FUNC4(widget), str);
        }
        else
        {
            if (FUNC13(str, G_FILE_TEST_IS_DIR))
            {
                FUNC30(
                    FUNC4(widget), str);
            }
            else if (FUNC13(str, G_FILE_TEST_EXISTS))
            {
                FUNC31 (FUNC4(widget), str);
            }
            else
            {
                gchar * dirname;

                dirname = FUNC15(str);
                FUNC30(
                    FUNC4(widget), dirname);
                FUNC32(FUNC4(widget));
                FUNC14(dirname);
            }
        }
    }
    else
    {
        FUNC16("Attempt to set unknown widget type, name %s", name);
    }
    FUNC14(tmp);
}
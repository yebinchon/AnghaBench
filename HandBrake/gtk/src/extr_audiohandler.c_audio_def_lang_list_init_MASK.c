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
struct TYPE_4__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeStore ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(signal_user_data_t *ud)
{
    GhbValue     * lang_list;
    GtkTreeView  * tv;
    GtkTreeModel * avail;
    GtkTreeStore * selected;
    int            ii, count;

    tv       = FUNC2(FUNC0(ud->builder, "audio_avail_lang"));
    avail    = FUNC17(tv);
    tv       = FUNC2(FUNC0(ud->builder, "audio_selected_lang"));
    selected = FUNC1(FUNC17(tv));

    // Clear selected languages.
    FUNC3(ud);

    lang_list = FUNC9(ud->settings, "AudioLanguageList");
    if (lang_list == NULL)
    {
        lang_list = FUNC7();
        FUNC10(ud->settings, "AudioLanguageList", lang_list);
    }

    count = FUNC6(lang_list);
    for (ii = 0; ii < count; )
    {
        GhbValue    * lang_val = FUNC5(lang_list, ii);
        int           idx      = FUNC12(lang_val);
        GtkTreeIter   iter;

        if (FUNC11(avail, &iter, idx))
        {
            gchar       * lang;
            gint          index;
            GtkTreeIter   pos;

            FUNC13(avail, &iter, 0, &lang, 1, &index, -1);
            FUNC14(selected, &pos, NULL);
            FUNC16(selected, &pos, 0, lang, 1, index, -1);
            FUNC4(lang);
            FUNC15(FUNC1(avail), &iter);
            ii++;
        }
        else
        {
            // Error in list.  Probably duplicate languages.  Remove
            // this item from the list.
            FUNC8(lang_list, ii);
            count--;
        }
    }
}
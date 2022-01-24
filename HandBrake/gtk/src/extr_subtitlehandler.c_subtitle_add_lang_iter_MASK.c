#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_9__ {int /*<<< orphan*/  iso639_2; } ;
typedef  TYPE_2__ iso639_lang_t ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeStore ;
typedef  int /*<<< orphan*/  GtkTreeSelection ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int,int*,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,TYPE_2__ const*) ; 

void
FUNC22(GtkTreeModel *tm, GtkTreeIter *iter,
                       signal_user_data_t *ud)
{
    GtkTreeView         * selected;
    GtkTreeStore        * selected_ts;
    GtkTreeIter           pos;
    GtkTreePath         * tp;
    char                * lang;
    int                   index;
    const iso639_lang_t * iso_lang;
    GhbValue            * glang, * slang_list;
    GtkTreeSelection    * tsel;

    selected    = FUNC3(FUNC0(ud->builder, "subtitle_selected_lang"));
    selected_ts = FUNC2(FUNC18(selected));
    tsel        = FUNC19(selected);

    // Add to UI selected language list box
    FUNC11(tm, iter, 0, &lang, 1, &index, -1);
    FUNC15(selected_ts, &pos, NULL);
    FUNC17(selected_ts, &pos, 0, lang, 1, index, -1);
    FUNC4(lang);

    // Select the item added to the selected list and make it
    // visible in the scrolled window
    tp = FUNC12(FUNC1(selected_ts), &pos);
    FUNC14(tsel, &pos);
    FUNC20(selected, tp, NULL, FALSE, 0, 0);
    FUNC13(tp);

    // Remove from UI available language list box
    FUNC16(FUNC2(tm), iter);

    // Add to preset language list
    iso_lang = FUNC9(index);
    glang = FUNC10(iso_lang->iso639_2);
    slang_list = FUNC8(ud->settings, "SubtitleLanguageList");
    if (FUNC6(slang_list) == 0)
    {
        FUNC21(ud, iso_lang);
    }
    FUNC5(slang_list, glang);
    FUNC7(ud);
}
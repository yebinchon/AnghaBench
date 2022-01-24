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
struct TYPE_6__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  iso639_2; } ;
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
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int,int*,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC20(GtkTreeModel *tm, GtkTreeIter *iter, signal_user_data_t *ud)
{
    GtkTreeView         * selected;
    GtkTreeStore        * selected_ts;
    GtkTreeIter           pos;
    GtkTreePath         * tp;
    char                * lang;
    int                   index;
    const iso639_lang_t * iso_lang;
    GhbValue            * glang, * alang_list;
    GtkTreeSelection    * tsel;

    selected    = FUNC3(FUNC0(ud->builder, "audio_selected_lang"));
    selected_ts = FUNC2(FUNC17(selected));
    tsel        = FUNC18(selected);

    // Add to UI selected language list box
    FUNC10(tm, iter, 0, &lang, 1, &index, -1);
    FUNC14(selected_ts, &pos, NULL);
    FUNC16(selected_ts, &pos, 0, lang, 1, index, -1);
    FUNC4(lang);

    // Select the item added to the selected list and make it
    // visible in the scrolled window
    tp = FUNC11(FUNC1(selected_ts), &pos);
    FUNC13(tsel, &pos);
    FUNC19(selected, tp, NULL, FALSE, 0, 0);
    FUNC12(tp);

    // Remove from UI available language list box
    FUNC15(FUNC2(tm), iter);

    // Add to preset language list
    iso_lang = FUNC8(index);
    glang = FUNC9(iso_lang->iso639_2);
    alang_list = FUNC7(ud->settings, "AudioLanguageList");
    FUNC5(alang_list, glang);
    FUNC6(ud);
}
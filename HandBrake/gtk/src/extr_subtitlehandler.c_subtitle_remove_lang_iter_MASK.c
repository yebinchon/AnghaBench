#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  iso639_lang_t ;
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
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int,int*,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

void
FUNC26(GtkTreeModel *tm, GtkTreeIter *iter,
                          signal_user_data_t *ud)
{
    GtkTreeView      * avail;
    GtkTreeStore     * avail_ts;
    GtkTreeIter        pos, sibling;
    char             * lang;
    int                index;
    GtkTreePath      * tp  = FUNC14(tm, iter);
    int              * ind = FUNC16(tp);
    int                row = ind[0];
    GhbValue         * slang_list;
    GtkTreeSelection * tsel;

    FUNC15(tp);
    avail    = FUNC3(FUNC0(ud->builder, "subtitle_avail_lang"));
    avail_ts = FUNC2(FUNC22(avail));
    tsel     = FUNC23(avail);

    // Add to UI available language list box
    FUNC13(tm, iter, 0, &lang, 1, &index, -1);
    if (FUNC10(FUNC1(avail_ts), &sibling, index))
    {
        FUNC19(avail_ts, &pos, NULL, &sibling);
    }
    else
    {
        FUNC18(avail_ts, &pos, NULL);
    }
    FUNC21(avail_ts, &pos, 0, lang, 1, index, -1);
    FUNC4(lang);

    // Select the item added to the available list and make it
    // visible in the scrolled window
    tp = FUNC14(FUNC1(avail_ts), &pos);
    FUNC17(tsel, &pos);
    FUNC24(avail, tp, NULL, FALSE, 0, 0);
    FUNC15(tp);

    // Remove from UI selected language list box
    FUNC20(FUNC2(tm), iter);

    // Remove from preset language list
    slang_list = FUNC9(ud->settings, "SubtitleLanguageList");
    FUNC7(slang_list, row);
    FUNC8(ud);

    if (row == 0)
    {
        if (FUNC6(slang_list) > 0)
        {
            const iso639_lang_t *lang;
            GhbValue *entry = FUNC5(slang_list, 0);
            lang = FUNC11(FUNC12(entry));
            FUNC25(ud, lang);
        }
        else
        {
            FUNC25(ud, NULL);
        }
    }
}
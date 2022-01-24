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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int,int*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC21(GtkTreeModel *tm, GtkTreeIter *iter,
                       signal_user_data_t *ud)
{
    GtkTreeView      * avail;
    GtkTreeStore     * avail_ts;
    GtkTreeIter        pos, sibling;
    char             * lang;
    int                index;
    GtkTreePath      * tp  = FUNC10(tm, iter);
    int              * ind = FUNC12(tp);
    int                row = ind[0];
    GhbValue         * alang_list;
    GtkTreeSelection * tsel;

    FUNC11(tp);
    avail    = FUNC3(FUNC0(ud->builder, "audio_avail_lang"));
    avail_ts = FUNC2(FUNC18(avail));
    tsel     = FUNC19(avail);

    // Add to UI available language list box
    FUNC9(tm, iter, 0, &lang, 1, &index, -1);
    if (FUNC8(FUNC1(avail_ts), &sibling, index))
    {
        FUNC15(avail_ts, &pos, NULL, &sibling);
    }
    else
    {
        FUNC14(avail_ts, &pos, NULL);
    }
    FUNC17(avail_ts, &pos, 0, lang, 1, index, -1);
    FUNC4(lang);

    // Select the item added to the available list and make it
    // visible in the scrolled window
    tp = FUNC10(FUNC1(avail_ts), &pos);
    FUNC13(tsel, &pos);
    FUNC20(avail, tp, NULL, FALSE, 0, 0);
    FUNC11(tp);

    // Remove from UI selected language list box
    FUNC16(FUNC2(tm), iter);

    // Remove from preset language list
    alang_list = FUNC7(ud->settings, "AudioLanguageList");
    FUNC5(alang_list, row);
    FUNC6(ud);
}
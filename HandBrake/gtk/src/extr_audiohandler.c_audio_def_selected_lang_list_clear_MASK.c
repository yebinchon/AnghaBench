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
struct TYPE_3__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeStore ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(signal_user_data_t *ud)
{
    GtkTreeView  * tv;
    GtkTreeModel * selected_tm;
    GtkTreeStore * avail_ts;
    GtkTreeIter    iter;

    tv          = FUNC3(FUNC0(ud->builder, "audio_avail_lang"));
    avail_ts    = FUNC2(FUNC13(tv));
    tv          = FUNC3(FUNC0(ud->builder, "audio_selected_lang"));
    selected_tm = FUNC13(tv);
    if (FUNC7(selected_tm, &iter))
    {
        do
        {
            gchar       * lang;
            gint          index;
            GtkTreeIter   pos, sibling;

            FUNC6(selected_tm, &iter, 0, &lang, 1, &index, -1);
            if (FUNC5(FUNC1(avail_ts), &sibling, index))
            {
                FUNC11(avail_ts, &pos, NULL, &sibling);
            }
            else
            {
                FUNC9(avail_ts, &pos, NULL);
            }
            FUNC12(avail_ts, &pos, 0, lang, 1, index, -1);
            FUNC4(lang);
        } while (FUNC8(selected_tm, &iter));
    }
    FUNC10(FUNC2(selected_tm));
}
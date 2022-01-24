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
typedef  int /*<<< orphan*/  signal_user_data_t ;
struct TYPE_5__ {scalar_t__* native_name; char* eng_name; int /*<<< orphan*/  iso639_2; } ;
typedef  TYPE_1__ iso639_lang_t ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreeStore ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 
 TYPE_1__* FUNC6 (TYPE_1__ const*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(GtkTreeView *tv, signal_user_data_t *ud)
{
    GtkTreeIter    iter;
    GtkTreeStore * ts;

    FUNC1(tv);
    ts = FUNC0(FUNC4(tv));

    const iso639_lang_t *iso639;
    for (iso639 = FUNC5(); iso639 != NULL;
         iso639 = FUNC6(iso639))
    {
        int          index = FUNC7(iso639->iso639_2);
        const char * lang;
        if (iso639->native_name != NULL && iso639->native_name[0] != 0)
        {
            lang = iso639->native_name;
        }
        else
        {
            lang = iso639->eng_name;
        }
        FUNC2(ts, &iter, NULL);
        FUNC3(ts, &iter, 0, lang, 1, index, -1);
    }
}
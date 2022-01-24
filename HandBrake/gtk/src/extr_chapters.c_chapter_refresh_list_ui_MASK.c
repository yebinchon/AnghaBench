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
typedef  int int64_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkListBox ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int,int,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC10(signal_user_data_t *ud)
{
    GhbValue   * chapter_list;
    GtkListBox * lb;
    GtkWidget  * row;
    gint         ii, count;

    lb = FUNC1(FUNC0(ud->builder, "chapters_list"));

    chapter_list = FUNC8(ud->settings);
    count = FUNC4(chapter_list);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue   * chapter_dict;
        GhbValue   * duration_dict;
        const char * name;
        int64_t start = 0, duration;

        chapter_dict  = FUNC3(chapter_list, ii);
        name          = FUNC7(chapter_dict, "Name");
        duration_dict = FUNC5(chapter_dict, "Duration");
        duration      = FUNC6(duration_dict, "Ticks") / 90000;
        row           = FUNC2(ii + 1, start, duration, name, ud);
        start        += duration;

        FUNC9(lb, row, -1);
    }
}
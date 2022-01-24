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
struct TYPE_3__ {int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GtkEditable ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(
    GtkEditable * edit,
    signal_user_data_t *ud)
{
    GtkListBoxRow * row;
    const char    * text;
    int             index;

    row = FUNC6(FUNC0(edit));
    if (row == NULL)
    {
        return;
    }
    index = FUNC5(row);
    text  = FUNC3(edit);
    if (text == NULL)
    {
        return;
    }

    const GhbValue * chapter_list;
    GhbValue       * chapter_dict;

    chapter_list = FUNC4(ud->settings);
    chapter_dict = FUNC1(chapter_list, index);
    if (chapter_dict == NULL)
    {
        return;
    }
    FUNC2(chapter_dict, "Name", text);
}
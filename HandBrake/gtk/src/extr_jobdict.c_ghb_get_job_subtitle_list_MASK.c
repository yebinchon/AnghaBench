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
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

GhbValue *FUNC4(GhbValue *settings)
{
    GhbValue *sub_dict = FUNC3(settings);
    GhbValue *sub_list = FUNC1(sub_dict, "SubtitleList");
    if (sub_list == NULL)
    {
        sub_list = FUNC0();
        FUNC2(sub_dict, "SubtitleList", sub_list);
    }
    return sub_list;
}
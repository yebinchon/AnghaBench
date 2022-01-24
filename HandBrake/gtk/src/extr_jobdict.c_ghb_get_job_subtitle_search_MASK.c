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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

GhbValue *FUNC5(GhbValue *settings)
{
    GhbValue *sub_dict   = FUNC4(settings);
    GhbValue *sub_search = FUNC0(sub_dict, "Search");
    if (sub_search == NULL)
    {
        sub_search = FUNC1();
        FUNC2(sub_dict, "Search", sub_search);
        FUNC3(sub_search, "Enable", 0);
    }
    return sub_search;
}
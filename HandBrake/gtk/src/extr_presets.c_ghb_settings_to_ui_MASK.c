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
typedef  int /*<<< orphan*/  signal_user_data_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GhbDictIter ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** widget_priority_list ; 

void
FUNC6(signal_user_data_t *ud, GhbValue *dict)
{
    GhbDictIter  iter;
    const gchar *key;
    GhbValue    *gval;
    int          ii;
    GhbValue    *tmp = FUNC4(dict);

    if (dict == NULL)
        return;

    for (ii = 0; widget_priority_list[ii] != NULL; ii++)
    {
        key = widget_priority_list[ii];
        gval = FUNC0(tmp, key);
        if (gval != NULL)
            FUNC3(ud, dict, key, gval);
    }

    iter = FUNC1(tmp);
    // middle (void*) cast prevents gcc warning "defreferencing type-punned
    // pointer will break strict-aliasing rules"
    while (FUNC2(tmp, &iter, &key, &gval))
    {
        FUNC3(ud, dict, key, gval);
    }
    FUNC5(&tmp);
}
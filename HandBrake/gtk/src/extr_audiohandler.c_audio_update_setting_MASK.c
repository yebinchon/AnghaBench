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
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ block_updates ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

void
FUNC8(
    GhbValue           *val,
    const char         *name,
    signal_user_data_t *ud)
{
    GhbValue *asettings;

    if (block_updates)
    {
        FUNC7(&val);
        return;
    }

    asettings = FUNC1(ud, NULL);
    if (asettings != NULL)
    {
        if (val != NULL)
            FUNC4(asettings, name, val);
        else
            FUNC3(asettings, name);
        FUNC0(ud, asettings, NULL);
        FUNC6(ud);
        FUNC2(ud);
        FUNC5(ud);
    }
    else
    {
        FUNC7(&val);
    }
}
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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_3__ {scalar_t__ timeout; int /*<<< orphan*/  dlg; int /*<<< orphan*/  action; int /*<<< orphan*/  msg; } ;
typedef  TYPE_1__ countdown_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC7(countdown_t *cd)
{
    gchar *str;

    cd->timeout--;
    if (cd->timeout == 0)
    {
        FUNC6 (FUNC0(cd->dlg));
        FUNC4();
        return FALSE;
    }
    str = FUNC3(FUNC1("%s\n\n%s in %d seconds ..."),
                            cd->msg, cd->action, cd->timeout);
    FUNC5(cd->dlg, str);
    FUNC2(str);
    return TRUE;
}
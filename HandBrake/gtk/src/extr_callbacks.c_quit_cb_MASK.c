#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_4__ {scalar_t__ timeout; int /*<<< orphan*/  dlg; int /*<<< orphan*/  action; int /*<<< orphan*/  msg; TYPE_3__* ud; } ;
typedef  TYPE_1__ countdown_t ;
struct TYPE_5__ {int /*<<< orphan*/  app; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static gboolean
FUNC10(countdown_t *cd)
{
    gchar *str;

    cd->timeout--;
    if (cd->timeout == 0)
    {
        FUNC6(FALSE);
        FUNC9(cd->ud);

        FUNC8 (FUNC0(cd->dlg));
        FUNC3(FUNC1(cd->ud->app));
        return FALSE;
    }
    str = FUNC5(FUNC2("%s\n\n%s in %d seconds ..."),
                            cd->msg, cd->action, cd->timeout);
    FUNC7(cd->dlg, str);
    FUNC4(str);
    return TRUE;
}
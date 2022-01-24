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
struct TYPE_3__ {int /*<<< orphan*/  store; } ;
typedef  TYPE_1__ YuiVdp2 ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GtkAction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC7(GtkAction * action, YuiVdp2 * yv) {
	GtkTreeIter iter;
    const gchar * name;

    name = FUNC2(action) + 7;

    if (!FUNC6("nbg0", name))
	    FUNC5(FUNC1(yv->store), &iter, "1");
    else if (!FUNC6("nbg1", name))
	    FUNC5(FUNC1(yv->store), &iter, "2");
    else if (!FUNC6("nbg2", name))
	    FUNC5(FUNC1(yv->store), &iter, "3");
    else if (!FUNC6("nbg3", name))
	    FUNC5(FUNC1(yv->store), &iter, "4");
    else if (!FUNC6("rbg0", name))
	    FUNC5(FUNC1(yv->store), &iter, "5");

	FUNC3(yv->store, &iter, 1, FUNC4(FUNC0(action)), -1);
}
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
typedef  int /*<<< orphan*/  GSourceFunc ;
typedef  int /*<<< orphan*/  GSource ;
typedef  int /*<<< orphan*/  GMainContext ;

/* Variables and functions */
 scalar_t__ delayed_store_prefs ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ prefs_timeout_id ; 

__attribute__((used)) static void
FUNC4(void)
{
    if (prefs_timeout_id != 0)
    {
        GMainContext *mc;
        GSource *source;

        mc = FUNC0();
        source = FUNC1(mc, prefs_timeout_id);
        if (source != NULL)
            FUNC2(source);
    }
    prefs_timeout_id = FUNC3(1, (GSourceFunc)delayed_store_prefs, NULL);
}
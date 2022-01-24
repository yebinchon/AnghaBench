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
typedef  int /*<<< orphan*/  pa_mainloop ;
typedef  int /*<<< orphan*/  pa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(pa_mainloop **pa_ml, pa_context **pa_ctx)
{
    FUNC0(pa_ml);
    FUNC0(pa_ctx);

    if (*pa_ctx) {
        FUNC2(*pa_ctx, NULL, NULL);
        FUNC1(*pa_ctx);
        FUNC3(*pa_ctx);
    }
    if (*pa_ml)
        FUNC4(*pa_ml);
    *pa_ml = NULL;
    *pa_ctx = NULL;
}
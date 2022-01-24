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
typedef  int /*<<< orphan*/  Token ;
struct TYPE_3__ {scalar_t__ ctx; int wastrue; int /*<<< orphan*/ * include_guard; } ;
typedef  TYPE_1__ CondIncl ;

/* Variables and functions */
 scalar_t__ IN_ELIF ; 
 scalar_t__ IN_ELSE ; 
 int /*<<< orphan*/  cond_incl_stack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Token *hash) {
    if (FUNC3(cond_incl_stack) == 0)
        FUNC0(hash, "stray #elif");
    CondIncl *ci = FUNC4(cond_incl_stack);
    if (ci->ctx == IN_ELSE)
        FUNC0(hash, "#elif after #else");
    ci->ctx = IN_ELIF;
    ci->include_guard = NULL;
    if (ci->wastrue || !FUNC1()) {
        FUNC2();
        return;
    }
    ci->wastrue = true;
}
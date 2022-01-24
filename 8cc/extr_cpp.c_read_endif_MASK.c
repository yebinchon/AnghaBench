#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* file; } ;
typedef  TYPE_2__ Token ;
struct TYPE_10__ {int /*<<< orphan*/  include_guard; TYPE_1__* file; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ CondIncl ;

/* Variables and functions */
 int /*<<< orphan*/  cond_incl_stack ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  include_guard ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Token *hash) {
    if (FUNC4(cond_incl_stack) == 0)
        FUNC0(hash, "stray #endif");
    CondIncl *ci = FUNC5(cond_incl_stack);
    FUNC1();

    // Detect an #ifndef and #endif pair that guards the entire
    // header file. Remember the macro name guarding the file
    // so that we can skip the file next time.
    if (!ci->include_guard || ci->file != hash->file)
        return;
    Token *last = FUNC3();
    if (ci->file != last->file)
        FUNC2(include_guard, ci->file->name, ci->include_guard);
}
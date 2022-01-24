#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_6__ {char const* external_name; int /*<<< orphan*/  reachable; int /*<<< orphan*/ * type; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Sym ;
typedef  int /*<<< orphan*/  Package ;

/* Variables and functions */
 int /*<<< orphan*/  REACHABLE_NATURAL ; 
 int /*<<< orphan*/  SYM_RESOLVED ; 
 int /*<<< orphan*/  SYM_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  builtin_package ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reachable_syms ; 
 int /*<<< orphan*/  sorted_syms ; 
 int /*<<< orphan*/  FUNC3 (char const*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

Sym *FUNC5(const char *name, Type *type) {
    Sym *sym = FUNC4(SYM_TYPE, name, NULL);
    sym->state = SYM_RESOLVED;
    sym->type = type;
    sym->external_name = name;
    Package *old_package = FUNC1(builtin_package);
    FUNC3(name, sym);
    FUNC2(old_package);
    FUNC0(sorted_syms, sym);
    FUNC0(reachable_syms, sym);
    sym->reachable = REACHABLE_NATURAL;
    return sym;
}
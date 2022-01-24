#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_5__ {char const* external_name; int /*<<< orphan*/ * type; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Sym ;

/* Variables and functions */
 int /*<<< orphan*/  SYM_RESOLVED ; 
 int /*<<< orphan*/  SYM_TYPE ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

Sym *FUNC3(const char *name, Type *type) {
    name = FUNC0(name);
    Sym *sym = FUNC2(SYM_TYPE, name, NULL);
    sym->state = SYM_RESOLVED;
    sym->type = type;
    sym->external_name = name;
    FUNC1(name, sym);
    return sym;
}
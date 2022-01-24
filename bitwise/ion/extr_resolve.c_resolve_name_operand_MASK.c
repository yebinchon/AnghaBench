#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  type; } ;
struct TYPE_11__ {scalar_t__ kind; int /*<<< orphan*/  type; int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ Sym ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  TYPE_2__ Operand ;

/* Variables and functions */
 scalar_t__ SYM_CONST ; 
 scalar_t__ SYM_FUNC ; 
 scalar_t__ SYM_VAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC4 (TYPE_2__) ; 
 TYPE_2__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__ operand_null ; 
 TYPE_2__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (char const*) ; 

Operand FUNC8(SrcPos pos, const char *name) {
    Sym *sym = FUNC7(name);
    if (!sym) {
        FUNC0(pos, "Unresolved name '%s'", name);
    }
    if (sym->kind == SYM_VAR) {
        Operand operand = FUNC5(sym->type);
        if (FUNC1(operand.type) && !FUNC2(operand.type)) {
            operand = FUNC4(operand);
        }
        return operand;
    } else if (sym->kind == SYM_CONST) {
        return FUNC3(sym->type, sym->val);
    } else if (sym->kind == SYM_FUNC) {
        return FUNC6(sym->type);
    } else {
        FUNC0(pos, "%s must be a var or const", name);
        return operand_null;
    }
}
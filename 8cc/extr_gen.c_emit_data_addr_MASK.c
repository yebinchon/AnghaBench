#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int kind; char* glabel; TYPE_1__* ty; int /*<<< orphan*/  lvarinit; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
#define  AST_GVAR 129 
#define  AST_LVAR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 () ; 

__attribute__((used)) static void FUNC5(Node *operand, int depth) {
    switch (operand->kind) {
    case AST_LVAR: {
        char *label = FUNC4();
        FUNC1(".data %d", depth + 1);
        FUNC2(label);
        FUNC0(operand->lvarinit, operand->ty->size, 0, depth + 1);
        FUNC1(".data %d", depth);
        FUNC1(".quad %s", label);
        return;
    }
    case AST_GVAR:
        FUNC1(".quad %s", operand->glabel);
        return;
    default:
        FUNC3("internal error");
    }
}
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
struct TYPE_5__ {int kind; int /*<<< orphan*/  ty; int /*<<< orphan*/  glabel; int /*<<< orphan*/  loff; int /*<<< orphan*/  struc; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
#define  AST_DEREF 131 
#define  AST_GVAR 130 
#define  AST_LVAR 129 
#define  AST_STRUCT_REF 128 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(Node *var) {
    SAVE;
    switch (var->kind) {
    case AST_DEREF: FUNC0(var); break;
    case AST_STRUCT_REF: FUNC1(var->struc, var->ty, 0); break;
    case AST_LVAR:
        FUNC4(var);
        FUNC3(var->ty, var->loff);
        break;
    case AST_GVAR: FUNC2(var->glabel, var->ty, 0); break;
    default: FUNC5("internal error");
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Token ;
struct TYPE_11__ {scalar_t__ kind; } ;
struct TYPE_10__ {TYPE_1__* ty; } ;
struct TYPE_9__ {scalar_t__ kind; TYPE_7__* ptr; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  AST_DEREF ; 
 scalar_t__ KIND_FUNC ; 
 scalar_t__ KIND_PTR ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,TYPE_7__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static Node *FUNC5(Token *tok) {
    Node *operand = FUNC1(FUNC4());
    if (operand->ty->kind != KIND_PTR)
        FUNC2(tok, "pointer type expected, but got %s", FUNC3(operand));
    if (operand->ty->ptr->kind == KIND_FUNC)
        return operand;
    return FUNC0(AST_DEREF, operand->ty->ptr, operand);
}
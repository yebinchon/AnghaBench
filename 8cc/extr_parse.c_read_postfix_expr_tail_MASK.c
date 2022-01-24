#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ kind; struct TYPE_19__* ptr; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_20__ {TYPE_1__* ty; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int AST_DEREF ; 
 scalar_t__ KIND_FUNC ; 
 scalar_t__ KIND_PTR ; 
 char OP_ARROW ; 
 char OP_DEC ; 
 char OP_INC ; 
 int OP_POST_DEC ; 
 int OP_POST_INC ; 
 TYPE_2__* FUNC0 (int,TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC6 (char) ; 
 char* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 TYPE_2__* FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static Node *FUNC13(Node *node) {
    if (!node) return NULL;
    for (;;) {
        if (FUNC6('(')) {
            Token *tok = FUNC8();
            node = FUNC1(node);
            Type *t = node->ty;
            if (t->kind != KIND_PTR || t->ptr->kind != KIND_FUNC)
                FUNC4(tok, "function expected, but got %s", FUNC7(node));
            node = FUNC9(node);
            continue;
        }
        if (FUNC6('[')) {
            node = FUNC11(node);
            continue;
        }
        if (FUNC6('.')) {
            node = FUNC10(node);
            continue;
        }
        if (FUNC6(OP_ARROW)) {
            if (node->ty->kind != KIND_PTR)
                FUNC3("pointer type expected, but got %s %s",
                      FUNC12(node->ty), FUNC7(node));
            node = FUNC0(AST_DEREF, node->ty->ptr, node);
            node = FUNC10(node);
            continue;
        }
        Token *tok = FUNC8();
        if (FUNC6(OP_INC) || FUNC6(OP_DEC)) {
            FUNC2(node);
            int op = FUNC5(tok, OP_INC) ? OP_POST_INC : OP_POST_DEC;
            return FUNC0(op, node->ty, node);
        }
        return node;
    }
}
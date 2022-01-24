#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Token ;
struct TYPE_21__ {scalar_t__ kind; } ;
struct TYPE_20__ {TYPE_4__* ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_4__*,char,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_4__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Node *FUNC12() {
    Node *node = FUNC10();
    Token *tok = FUNC6();
    if (!tok)
        return node;
    if (FUNC9(tok, '?'))
        return FUNC4(node);
    int cop = FUNC7(tok);
    if (FUNC9(tok, '=') || cop) {
        Node *value = FUNC3(FUNC12());
        if (FUNC9(tok, '=') || cop)
            FUNC5(node);
        Node *right = cop ? FUNC2(cop, FUNC3(node), value) : value;
        if (FUNC8(node->ty) && node->ty->kind != right->ty->kind)
            right = FUNC1(node->ty, right);
        return FUNC0(node->ty, '=', node, right);
    }
    FUNC11(tok);
    return node;
}
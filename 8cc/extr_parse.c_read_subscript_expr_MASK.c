#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Token ;
struct TYPE_11__ {TYPE_1__* ty; } ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  AST_DEREF ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 TYPE_2__* FUNC6 () ; 

__attribute__((used)) static Node *FUNC7(Node *node) {
    Token *tok = FUNC5();
    Node *sub = FUNC6();
    if (!sub)
        FUNC3(tok, "subscription expected");
    FUNC4(']');
    Node *t = FUNC1('+', FUNC2(node), FUNC2(sub));
    return FUNC0(AST_DEREF, t->ty->ptr, t);
}
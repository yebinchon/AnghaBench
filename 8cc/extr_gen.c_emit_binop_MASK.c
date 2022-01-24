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
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ kind; } ;
struct TYPE_9__ {int kind; TYPE_3__* ty; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 scalar_t__ KIND_PTR ; 
#define  OP_EQ 130 
#define  OP_LE 129 
#define  OP_NE 128 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(Node *node) {
    SAVE;
    if (node->ty->kind == KIND_PTR) {
        FUNC3(node->kind, node->left, node->right);
        return;
    }
    switch (node->kind) {
    case '<': FUNC2("setl", "setb", node); return;
    case OP_EQ: FUNC2("sete", "sete", node); return;
    case OP_LE: FUNC2("setle", "setna", node); return;
    case OP_NE: FUNC2("setne", "setne", node); return;
    }
    if (FUNC6(node->ty))
        FUNC1(node);
    else if (FUNC5(node->ty))
        FUNC0(node);
    else
        FUNC4("internal error: %s", FUNC7(node));
}
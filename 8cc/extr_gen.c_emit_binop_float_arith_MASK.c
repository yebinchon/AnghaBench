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
struct TYPE_5__ {int kind; int /*<<< orphan*/  right; int /*<<< orphan*/  left; TYPE_1__* ty; } ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 scalar_t__ KIND_DOUBLE ; 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Node *node) {
    SAVE;
    char *op;
    bool isdouble = (node->ty->kind == KIND_DOUBLE);
    switch (node->kind) {
    case '+': op = (isdouble ? "addsd" : "addss"); break;
    case '-': op = (isdouble ? "subsd" : "subss"); break;
    case '*': op = (isdouble ? "mulsd" : "mulss"); break;
    case '/': op = (isdouble ? "divsd" : "divss"); break;
    default: FUNC2("invalid operator '%d'", node->kind);
    }
    FUNC1(node->left);
    FUNC4(0);
    FUNC1(node->right);
    FUNC0("%s #xmm0, #xmm1", (isdouble ? "movsd" : "movss"));
    FUNC3(0);
    FUNC0("%s #xmm1, #xmm0", op);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ty; } ;
struct TYPE_6__ {int kind; TYPE_3__* left; TYPE_1__* ty; TYPE_3__* right; } ;
struct TYPE_5__ {scalar_t__ usig; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
#define  OP_SAL 130 
#define  OP_SAR 129 
#define  OP_SHR 128 
 int /*<<< orphan*/  SAVE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(Node *node) {
    SAVE;
    char *op = NULL;
    switch (node->kind) {
    case '+': op = "add"; break;
    case '-': op = "sub"; break;
    case '*': op = "imul"; break;
    case '^': op = "xor"; break;
    case OP_SAL: op = "sal"; break;
    case OP_SAR: op = "sar"; break;
    case OP_SHR: op = "shr"; break;
    case '/': case '%': break;
    default: FUNC2("invalid operator '%d'", node->kind);
    }
    FUNC1(node->left);
    FUNC5("rax");
    FUNC1(node->right);
    FUNC0("mov #rax, #rcx");
    FUNC4("rax");
    if (node->kind == '/' || node->kind == '%') {
        if (node->ty->usig) {
          FUNC0("xor #edx, #edx");
          FUNC0("div #rcx");
        } else {
          FUNC0("cqto");
          FUNC0("idiv #rcx");
        }
        if (node->kind == '%')
            FUNC0("mov #edx, #eax");
    } else if (node->kind == OP_SAL || node->kind == OP_SAR || node->kind == OP_SHR) {
        FUNC0("%s #cl, #%s", op, FUNC3(node->left->ty, 'a'));
    } else {
        FUNC0("%s #rcx, #rax", op);
    }
}
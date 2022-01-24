#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int kind; int /*<<< orphan*/  fname; TYPE_1__* ty; struct TYPE_7__* struc; int /*<<< orphan*/  operand; int /*<<< orphan*/  glabel; int /*<<< orphan*/  loff; } ;
struct TYPE_6__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
#define  AST_DEREF 132 
#define  AST_FUNCDESG 131 
#define  AST_GVAR 130 
#define  AST_LVAR 129 
#define  AST_STRUCT_REF 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(Node *node) {
    switch (node->kind) {
    case AST_LVAR:
        FUNC2(node);
        FUNC0("lea %d(#rbp), #rax", node->loff);
        break;
    case AST_GVAR:
        FUNC0("lea %s(#rip), #rax", node->glabel);
        break;
    case AST_DEREF:
        FUNC1(node->operand);
        break;
    case AST_STRUCT_REF:
        FUNC5(node->struc);
        FUNC0("add $%d, #rax", node->ty->offset);
        break;
    case AST_FUNCDESG:
        FUNC0("lea %s(#rip), #rax", node->fname);
        break;
    default:
        FUNC3("internal error: %s", FUNC4(node));
    }
}
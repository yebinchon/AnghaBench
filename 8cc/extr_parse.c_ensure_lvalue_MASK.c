#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int kind; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
#define  AST_DEREF 131 
#define  AST_GVAR 130 
#define  AST_LVAR 129 
#define  AST_STRUCT_REF 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(Node *node) {
    switch (node->kind) {
    case AST_LVAR: case AST_GVAR: case AST_DEREF: case AST_STRUCT_REF:
        return;
    default:
        FUNC0("lvalue expected, but got %s", FUNC1(node));
    }
}
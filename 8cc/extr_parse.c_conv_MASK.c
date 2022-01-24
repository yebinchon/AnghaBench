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
struct TYPE_10__ {int kind; int /*<<< orphan*/  bitsize; struct TYPE_10__* ptr; } ;
typedef  TYPE_1__ Type ;
struct TYPE_11__ {TYPE_1__* ty; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  AST_ADDR ; 
 int /*<<< orphan*/  AST_CONV ; 
#define  KIND_ARRAY 133 
#define  KIND_BOOL 132 
#define  KIND_CHAR 131 
#define  KIND_FUNC 130 
#define  KIND_INT 129 
#define  KIND_SHORT 128 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  type_int ; 

__attribute__((used)) static Node *FUNC3(Node *node) {
    if (!node)
        return NULL;
    Type *ty = node->ty;
    switch (ty->kind) {
    case KIND_ARRAY:
        // C11 6.3.2.1p3: An array of T is converted to a pointer to T.
        return FUNC1(AST_CONV, FUNC2(ty->ptr), node);
    case KIND_FUNC:
        // C11 6.3.2.1p4: A function designator is converted to a pointer to the function.
        return FUNC1(AST_ADDR, FUNC2(ty), node);
    case KIND_SHORT: case KIND_CHAR: case KIND_BOOL:
        // C11 6.3.1.1p2: The integer promotions
        return FUNC0(type_int, node);
    case KIND_INT:
        if (ty->bitsize > 0)
            return FUNC0(type_int, node);
    }
    return node;
}
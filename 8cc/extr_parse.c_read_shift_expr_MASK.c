#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ usig; } ;
struct TYPE_8__ {TYPE_7__* ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int OP_SAL ; 
 int OP_SAR ; 
 int OP_SHR ; 
 TYPE_1__* FUNC0 (TYPE_7__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__* FUNC4 () ; 

__attribute__((used)) static Node *FUNC5() {
    Node *node = FUNC4();
    for (;;) {
        int op;
        if (FUNC3(OP_SAL))
            op = OP_SAL;
        else if (FUNC3(OP_SAR))
            op = node->ty->usig ? OP_SHR : OP_SAR;
        else
            break;
        Node *right = FUNC4();
        FUNC2(node);
        FUNC2(right);
        node = FUNC0(node->ty, op, FUNC1(node), FUNC1(right));
    }
    return node;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 char OP_GE ; 
 char OP_LE ; 
 TYPE_1__* FUNC0 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  type_int ; 

__attribute__((used)) static Node *FUNC4() {
    Node *node = FUNC3();
    for (;;) {
        if      (FUNC2('<'))   node = FUNC0('<',   FUNC1(node), FUNC1(FUNC3()));
        else if (FUNC2('>'))   node = FUNC0('<',   FUNC1(FUNC3()), FUNC1(node));
        else if (FUNC2(OP_LE)) node = FUNC0(OP_LE, FUNC1(node), FUNC1(FUNC3()));
        else if (FUNC2(OP_GE)) node = FUNC0(OP_LE, FUNC1(FUNC3()), FUNC1(node));
        else    return node;
        node->ty = type_int;
    }
}
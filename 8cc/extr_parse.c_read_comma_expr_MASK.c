#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (char) ; 
 TYPE_1__* FUNC2 () ; 

__attribute__((used)) static Node *FUNC3() {
    Node *node = FUNC2();
    while (FUNC1(',')) {
        Node *expr = FUNC2();
        node = FUNC0(expr->ty, ',', node, expr);
    }
    return node;
}
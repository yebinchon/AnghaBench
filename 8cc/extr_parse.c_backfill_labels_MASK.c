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
struct TYPE_4__ {char* label; scalar_t__ kind; scalar_t__ newlabel; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 scalar_t__ AST_GOTO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  gotos ; 
 int /*<<< orphan*/  labels ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5() {
    for (int i = 0; i < FUNC4(gotos); i++) {
        Node *src = FUNC3(gotos, i);
        char *label = src->label;
        Node *dst = FUNC2(labels, label);
        if (!dst)
            FUNC0("stray %s: %s", src->kind == AST_GOTO ? "goto" : "unary &&", label);
        if (dst->newlabel)
            src->newlabel = dst->newlabel;
        else
            src->newlabel = dst->newlabel = FUNC1();
    }
}
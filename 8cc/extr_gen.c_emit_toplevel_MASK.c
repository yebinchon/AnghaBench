#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ kind; int /*<<< orphan*/  body; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 scalar_t__ AST_DECL ; 
 scalar_t__ AST_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int stackpos ; 

void FUNC5(Node *v) {
    stackpos = 8;
    if (v->kind == AST_FUNC) {
        FUNC1(v);
        FUNC0(v->body);
        FUNC3();
    } else if (v->kind == AST_DECL) {
        FUNC2(v);
    } else {
        FUNC4("internal error");
    }
}
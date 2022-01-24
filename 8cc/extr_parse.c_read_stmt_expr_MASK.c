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
typedef  int /*<<< orphan*/  Type ;
struct TYPE_5__ {int /*<<< orphan*/ * ty; int /*<<< orphan*/  stmts; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/ * type_void ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *FUNC4() {
    Node *r = FUNC1();
    FUNC0(')');
    Type *rtype = type_void;
    if (FUNC2(r->stmts) > 0) {
        Node *lastexpr = FUNC3(r->stmts);
        if (lastexpr->ty)
            rtype = lastexpr->ty;
    }
    r->ty = rtype;
    return r;
}
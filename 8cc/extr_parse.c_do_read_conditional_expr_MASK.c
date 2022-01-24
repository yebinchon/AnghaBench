#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_11__ {int /*<<< orphan*/ * ty; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static Node *FUNC8(Node *cond) {
    Node *then = FUNC1(FUNC4());
    FUNC2(':');
    Node *els = FUNC1(FUNC5());
    // [GNU] Omitting the middle operand is allowed.
    Type *t = then ? then->ty : cond->ty;
    Type *u = els->ty;
    // C11 6.5.15p5: if both types are arithemtic type, the result
    // type is the result of the usual arithmetic conversions.
    if (FUNC3(t) && FUNC3(u)) {
        Type *r = FUNC6(t, u);
        return FUNC0(r, cond, (then ? FUNC7(r, then) : NULL), FUNC7(r, els));
    }
    return FUNC0(u, cond, then, els);
}
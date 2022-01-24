#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ kind; } ;
typedef  TYPE_1__ Type ;
struct TYPE_20__ {TYPE_1__* ty; } ;
typedef  TYPE_2__ Node ;

/* Variables and functions */
 scalar_t__ KIND_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* type_int ; 
 TYPE_1__* type_long ; 
 TYPE_1__* FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static Node *FUNC7(int op, Node *lhs, Node *rhs) {
    if (lhs->ty->kind == KIND_PTR && rhs->ty->kind == KIND_PTR) {
        if (!FUNC5(op))
            FUNC2("invalid pointer arith");
        // C11 6.5.6.9: Pointer subtractions have type ptrdiff_t.
        if (op == '-')
            return FUNC1(type_long, op, lhs, rhs);
        // C11 6.5.8.6, 6.5.9.3: Pointer comparisons have type int.
        return FUNC1(type_int, op, lhs, rhs);
    }
    if (lhs->ty->kind == KIND_PTR)
        return FUNC1(lhs->ty, op, lhs, rhs);
    if (rhs->ty->kind == KIND_PTR)
        return FUNC1(rhs->ty, op, rhs, lhs);
    FUNC0(FUNC3(lhs->ty));
    FUNC0(FUNC3(rhs->ty));
    Type *r = FUNC4(lhs->ty, rhs->ty);
    return FUNC1(r, op, FUNC6(r, lhs), FUNC6(r, rhs));
}
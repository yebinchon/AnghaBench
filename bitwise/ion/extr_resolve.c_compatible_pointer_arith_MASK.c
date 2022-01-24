#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ Type ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* type_char ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* type_void ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(Type *left, Type *right, Expr *left_expr, Expr *right_expr) {
    if (FUNC0(left) && FUNC0(right)) {
        Type *left_base = FUNC4(left->base);
        Type *right_base = FUNC4(right->base);
        if (left_base == right_base) {
            return true;
        }
        if (left_base == type_void && right_base == type_char) {
            FUNC2(left_expr, FUNC3(FUNC1(type_char, left->base)));
            return true;
        }
        if (left_base == type_char && right_base == type_void) {
            FUNC2(right_expr, FUNC3(FUNC1(type_char, right->base)));
            return true;
        }
    }
    return false;
}
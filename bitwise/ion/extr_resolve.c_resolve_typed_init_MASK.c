#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ base; int incomplete_elems; int /*<<< orphan*/  size; int /*<<< orphan*/  num_elems; } ;
typedef  TYPE_1__ Type ;
struct TYPE_18__ {TYPE_1__* type; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  TYPE_2__ Operand ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_2__ FUNC4 (TYPE_2__) ; 
 TYPE_2__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 

Type *FUNC8(SrcPos pos, Type *type, Expr *expr) {
    Type *expected_type = FUNC7(type);
    Operand operand = FUNC5(expr, expected_type);
    if (FUNC2(type)) {
        if (FUNC1(operand.type) && type->base == operand.type->base) {
            // Incomplete array size, so infer the size from the initializer expression's type.
            type->num_elems = operand.type->num_elems;
            type->size = operand.type->size;
            type->incomplete_elems = false;
            FUNC6(expr, type);
            return type;
        } else if (FUNC3(operand.type) && type->base == operand.type->base) {
            FUNC6(expr, operand.type);
            return operand.type;
        }
    }
    if (type && FUNC3(type)) {
        operand = FUNC4(operand);
    }
    if (!FUNC0(&operand, expected_type)) {
        return NULL;
    }
    FUNC6(expr, operand.type);
    return operand.type;
}
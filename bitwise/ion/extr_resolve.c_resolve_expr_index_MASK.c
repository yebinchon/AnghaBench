#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
struct TYPE_24__ {long long u; } ;
struct TYPE_19__ {int /*<<< orphan*/  index; int /*<<< orphan*/  expr; } ;
struct TYPE_23__ {scalar_t__ kind; int /*<<< orphan*/  pos; TYPE_1__ index; } ;
struct TYPE_22__ {TYPE_14__* type; TYPE_6__ val; int /*<<< orphan*/  is_const; } ;
struct TYPE_21__ {TYPE_2__* fields; scalar_t__ num_fields; } ;
struct TYPE_20__ {TYPE_14__* type; } ;
struct TYPE_18__ {int /*<<< orphan*/  base; TYPE_3__ aggregate; } ;
typedef  TYPE_4__ Operand ;
typedef  TYPE_5__ Expr ;

/* Variables and functions */
 scalar_t__ EXPR_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_14__*) ; 
 TYPE_4__ FUNC6 (TYPE_4__) ; 
 TYPE_4__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_6__) ; 
 int /*<<< orphan*/  type_llong ; 

Operand FUNC11(Expr *expr) {
    FUNC0(expr->kind == EXPR_INDEX);
    Operand index = FUNC9(expr->index.index);
    if (!FUNC4(index.type)) {
        FUNC2(expr->pos, "Index must have integer type");
    }
    Operand operand = FUNC8(expr->index.expr);
    if (FUNC3(operand.type)) {
        if (!index.is_const) {
            FUNC2(expr->pos, "Aggregate field index must be an integer constant");
        }
        FUNC1(&index, type_llong);
        FUNC10(expr->index.index, index.val);
        long long i = index.val.u;
        if (!(0 <= i && i < (long long)operand.type->aggregate.num_fields)) {
            FUNC2(expr->pos, "Aggregate field index out of range");
        }
        operand.type = operand.type->aggregate.fields[i].type;
        return operand;
    }
    operand = FUNC6(operand);
    if (!FUNC5(operand.type)) {
        FUNC2(expr->pos, "Can only index aggregates, arrays and pointers");
    }
    return FUNC7(operand.type->base);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_18__ ;
typedef  struct TYPE_27__   TYPE_16__ ;
typedef  struct TYPE_26__   TYPE_11__ ;

/* Type definitions */
struct TYPE_30__ {struct TYPE_30__* base; } ;
typedef  TYPE_2__ Type ;
struct TYPE_29__ {TYPE_11__* len; TYPE_18__* arg; TYPE_16__* alloc; } ;
struct TYPE_32__ {TYPE_1__ new_expr; int /*<<< orphan*/  pos; } ;
struct TYPE_31__ {TYPE_2__* type; int /*<<< orphan*/  is_lvalue; } ;
struct TYPE_28__ {int /*<<< orphan*/  pos; } ;
struct TYPE_27__ {int /*<<< orphan*/  pos; } ;
struct TYPE_26__ {int /*<<< orphan*/  pos; } ;
typedef  TYPE_3__ Operand ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 TYPE_3__ FUNC5 (TYPE_2__*) ; 
 TYPE_3__ FUNC6 (TYPE_18__*,TYPE_2__*) ; 
 TYPE_3__ FUNC7 (TYPE_16__*) ; 
 TYPE_3__ FUNC8 (TYPE_11__*) ; 
 int /*<<< orphan*/  type_allocator_ptr ; 
 TYPE_2__* FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 

Operand FUNC12(Expr *expr, Type *expected_type) {
    if (expr->new_expr.alloc) {
        Operand alloc = FUNC7(expr->new_expr.alloc);
        if (!FUNC1(&alloc, type_allocator_ptr)) {
            FUNC2(expr->new_expr.alloc->pos, "Allocator of new must have type Allocator* or be pointer to struct with leading field of type Allocator");
        }
    }
    if (expr->new_expr.len) {
        Operand len = FUNC8(expr->new_expr.len);
        if (!FUNC3(len.type)) {
            FUNC2(expr->new_expr.len->pos, "Length argument of new must have integer type");
        }
    }
    Type *expected_base = NULL;
    if (FUNC4(expected_type)) {
        expected_base = expected_type->base;
    }
    if (!expr->new_expr.arg) {
        expected_type = FUNC9(expected_type);
        if (!FUNC4(expected_type)) {
            FUNC2(expr->pos, "New with void argument must have expected pointer type");
        }
        return FUNC5(expected_type);
    } else {
        Operand arg = FUNC6(expr->new_expr.arg, expr->new_expr.len ? expected_type : expected_base);
        if (expr->new_expr.len) {
            if (!FUNC4(arg.type)) {
                FUNC2(expr->new_expr.arg->pos, "Argument to new[] must have pointer type");
            }
        } else {
            if (!arg.is_lvalue) {
                FUNC2(expr->new_expr.arg->pos, "Argument to new must be lvalue");
            }
        }
        FUNC0(arg.type);
        if (FUNC11(arg.type) == 0) {
            FUNC2(expr->new_expr.arg->pos, "Type of argument to new has zero size");
        }
        return FUNC5(expr->new_expr.len ? arg.type : FUNC10(arg.type));
    }
}
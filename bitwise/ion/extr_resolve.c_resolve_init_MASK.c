#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Typespec ;
struct TYPE_26__ {scalar_t__ size; } ;
typedef  TYPE_1__ Type ;
struct TYPE_27__ {scalar_t__ kind; } ;
struct TYPE_25__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  SrcPos ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 scalar_t__ EXPR_COMPOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 TYPE_16__ FUNC7 (TYPE_2__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC12 (TYPE_1__*) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ) ; 

Type *FUNC14(SrcPos pos, Typespec *typespec, Expr *expr, bool was_const, bool is_undef) {
    Type *type = NULL;
    Type *inferred_type = NULL;
    Type *declared_type = NULL;
    if (is_undef) {
        if (typespec) {
            declared_type = type = FUNC9(typespec, was_const);
        }
        if (!type) {
            FUNC2(pos, "Cannot use undef initializer without declared type");
        }
    } else if (typespec) {
        declared_type = type = FUNC9(typespec, was_const);
        if (expr) {
            inferred_type = type = FUNC8(pos, declared_type, expr);
            if (!inferred_type) {
                FUNC2(pos, "Invalid type in initialization. Expected %s", FUNC3(declared_type));
            }
        }
    } else {
        FUNC0(expr);
        inferred_type = type = FUNC13(FUNC7(expr).type);
        if (FUNC5(type) && expr->kind != EXPR_COMPOUND) {
            type = FUNC12(type);
            FUNC11(expr, type);
        }
        FUNC10(expr, type);
    }
    FUNC1(type);
    if (!expr || FUNC6(inferred_type)) {
        type = FUNC4(type);
    }
    if (type->size == 0) {
        FUNC2(pos, "Cannot declare variable of size 0");
    }
    return type;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_7__ {size_t num_params; int /*<<< orphan*/  has_varargs; scalar_t__ varargs_type; scalar_t__ ret_type; TYPE_1__* params; } ;
struct TYPE_8__ {scalar_t__ kind; TYPE_2__ func; int /*<<< orphan*/  pos; } ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_3__ Decl ;

/* Variables and functions */
 scalar_t__ DECL_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  foreign_name ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intrinsic_name ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/ * type_float ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * type_int ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * type_void ; 

Type *FUNC12(Decl *decl) {
    FUNC0(decl->kind == DECL_FUNC);
    bool foreign = FUNC5(decl, foreign_name) != NULL;
    bool intrinsic = FUNC5(decl, intrinsic_name) != NULL;
    bool with_const = foreign;
    Type **params = NULL;
    for (size_t i = 0; i < decl->func.num_params; i++) {
        Type *param = FUNC9(decl->func.params[i].type, with_const);
        param = FUNC6(param);
        FUNC3(param);
        if (param == type_void && !foreign) {
            FUNC4(decl->pos, "Function parameter type cannot be void");
        }
        FUNC2(params, param);
    }
    Type *ret_type = type_void;
    if (decl->func.ret_type) {
        ret_type = FUNC6(FUNC9(decl->func.ret_type, with_const));
        FUNC3(ret_type);
    }
    if (FUNC7(ret_type)) {
        FUNC4(decl->pos, "Function return type cannot be array");
    }
    Type *varargs_type = type_void;
    if (decl->func.varargs_type) {
        varargs_type = FUNC6(FUNC9(decl->func.varargs_type, with_const));
        FUNC3(varargs_type);
        if (FUNC8(varargs_type) && FUNC11(varargs_type) < FUNC11(type_int)) {
            FUNC4(decl->pos, "Integer varargs type must have same or higher rank than int");
        } else if (varargs_type == type_float) {
            FUNC4(decl->pos, "Floating varargs type must be double, not float");
        }
    }
    return FUNC10(params, FUNC1(params), ret_type, intrinsic, decl->func.has_varargs, varargs_type);
}
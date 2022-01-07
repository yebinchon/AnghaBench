
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_16__ ;


typedef int Typespec ;
struct TYPE_26__ {scalar_t__ size; } ;
typedef TYPE_1__ Type ;
struct TYPE_27__ {scalar_t__ kind; } ;
struct TYPE_25__ {int type; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 scalar_t__ EXPR_COMPOUND ;
 int assert (TYPE_2__*) ;
 int complete_type (TYPE_1__*) ;
 int fatal_error (int ,char*,...) ;
 int get_type_name (TYPE_1__*) ;
 TYPE_1__* incomplete_decay (TYPE_1__*) ;
 scalar_t__ is_array_type (TYPE_1__*) ;
 scalar_t__ is_ptr_type (TYPE_1__*) ;
 TYPE_16__ resolve_expr (TYPE_2__*) ;
 TYPE_1__* resolve_typed_init (int ,TYPE_1__*,TYPE_2__*) ;
 TYPE_1__* resolve_typespec_strict (int *,int) ;
 int set_resolved_expected_type (TYPE_2__*,TYPE_1__*) ;
 int set_resolved_type (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* type_decay (TYPE_1__*) ;
 TYPE_1__* unqualify_type (int ) ;

Type *resolve_init(SrcPos pos, Typespec *typespec, Expr *expr, bool was_const, bool is_undef) {
    Type *type = ((void*)0);
    Type *inferred_type = ((void*)0);
    Type *declared_type = ((void*)0);
    if (is_undef) {
        if (typespec) {
            declared_type = type = resolve_typespec_strict(typespec, was_const);
        }
        if (!type) {
            fatal_error(pos, "Cannot use undef initializer without declared type");
        }
    } else if (typespec) {
        declared_type = type = resolve_typespec_strict(typespec, was_const);
        if (expr) {
            inferred_type = type = resolve_typed_init(pos, declared_type, expr);
            if (!inferred_type) {
                fatal_error(pos, "Invalid type in initialization. Expected %s", get_type_name(declared_type));
            }
        }
    } else {
        assert(expr);
        inferred_type = type = unqualify_type(resolve_expr(expr).type);
        if (is_array_type(type) && expr->kind != EXPR_COMPOUND) {
            type = type_decay(type);
            set_resolved_type(expr, type);
        }
        set_resolved_expected_type(expr, type);
    }
    complete_type(type);
    if (!expr || is_ptr_type(inferred_type)) {
        type = incomplete_decay(type);
    }
    if (type->size == 0) {
        fatal_error(pos, "Cannot declare variable of size 0");
    }
    return type;
}

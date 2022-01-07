
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Type ;
struct TYPE_7__ {size_t num_params; int has_varargs; scalar_t__ varargs_type; scalar_t__ ret_type; TYPE_1__* params; } ;
struct TYPE_8__ {scalar_t__ kind; TYPE_2__ func; int pos; } ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_3__ Decl ;


 scalar_t__ DECL_FUNC ;
 int assert (int) ;
 int buf_len (int **) ;
 int buf_push (int **,int *) ;
 int complete_type (int *) ;
 int fatal_error (int ,char*) ;
 int foreign_name ;
 int * get_decl_note (TYPE_3__*,int ) ;
 int * incomplete_decay (int *) ;
 int intrinsic_name ;
 scalar_t__ is_array_type (int *) ;
 scalar_t__ is_integer_type (int *) ;
 int * resolve_typespec_strict (scalar_t__,int) ;
 int * type_float ;
 int * type_func (int **,int ,int *,int,int ,int *) ;
 int * type_int ;
 scalar_t__ type_rank (int *) ;
 int * type_void ;

Type *resolve_decl_func(Decl *decl) {
    assert(decl->kind == DECL_FUNC);
    bool foreign = get_decl_note(decl, foreign_name) != ((void*)0);
    bool intrinsic = get_decl_note(decl, intrinsic_name) != ((void*)0);
    bool with_const = foreign;
    Type **params = ((void*)0);
    for (size_t i = 0; i < decl->func.num_params; i++) {
        Type *param = resolve_typespec_strict(decl->func.params[i].type, with_const);
        param = incomplete_decay(param);
        complete_type(param);
        if (param == type_void && !foreign) {
            fatal_error(decl->pos, "Function parameter type cannot be void");
        }
        buf_push(params, param);
    }
    Type *ret_type = type_void;
    if (decl->func.ret_type) {
        ret_type = incomplete_decay(resolve_typespec_strict(decl->func.ret_type, with_const));
        complete_type(ret_type);
    }
    if (is_array_type(ret_type)) {
        fatal_error(decl->pos, "Function return type cannot be array");
    }
    Type *varargs_type = type_void;
    if (decl->func.varargs_type) {
        varargs_type = incomplete_decay(resolve_typespec_strict(decl->func.varargs_type, with_const));
        complete_type(varargs_type);
        if (is_integer_type(varargs_type) && type_rank(varargs_type) < type_rank(type_int)) {
            fatal_error(decl->pos, "Integer varargs type must have same or higher rank than int");
        } else if (varargs_type == type_float) {
            fatal_error(decl->pos, "Floating varargs type must be double, not float");
        }
    }
    return type_func(params, buf_len(params), ret_type, intrinsic, decl->func.has_varargs, varargs_type);
}

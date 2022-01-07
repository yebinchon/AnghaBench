
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct TYPE_19__ {size_t num_fields; TYPE_4__** fields; } ;
struct TYPE_18__ {size_t num_args; TYPE_4__* ret; TYPE_4__** args; } ;
struct TYPE_20__ {int kind; char** names; int pos; TYPE_3__ tuple; TYPE_2__ func; TYPE_13__* num_elems; struct TYPE_20__* base; int num_names; } ;
typedef TYPE_4__ Typespec ;
typedef int Type ;
struct TYPE_17__ {int i; } ;
struct TYPE_22__ {TYPE_1__ val; int type; } ;
struct TYPE_21__ {int * type; int kind; int * package; } ;
struct TYPE_16__ {int pos; } ;
typedef TYPE_5__ Sym ;
typedef int Package ;
typedef TYPE_6__ Operand ;


 int SYM_PACKAGE ;
 int SYM_TYPE ;






 int assert (int ) ;
 int buf_len (int **) ;
 int buf_push (int **,int *) ;
 int cast_operand (TYPE_6__*,int ) ;
 int * current_package ;
 int fatal_error (int ,char*,...) ;
 TYPE_5__* get_package_sym (int *,char const*) ;
 int get_reachable (int *) ;
 int * incomplete_decay (int *) ;
 int is_array_type (int *) ;
 int is_integer_type (int ) ;
 TYPE_6__ resolve_const_expr (TYPE_13__*) ;
 int resolve_sym (TYPE_5__*) ;
 int set_reachable (int *) ;
 int set_resolved_sym (TYPE_4__*,TYPE_5__*) ;
 int set_resolved_type (TYPE_4__*,int *) ;
 int * type_array (int *,int,int ) ;
 int * type_const (int *) ;
 int * type_func (int **,int ,int *,int,int,int *) ;
 int type_int ;
 int * type_ptr (int *) ;
 int * type_tuple (int **,int ) ;
 int * type_void ;

Type *resolve_typespec_strict(Typespec *typespec, bool with_const) {
    if (!typespec) {
        return type_void;
    }
    Type *result = ((void*)0);
    switch (typespec->kind) {
    case 130: {
        Package *package = current_package;
        for (size_t i = 0; i < typespec->num_names - 1; i++) {
            const char *name = typespec->names[i];
            Sym *sym = get_package_sym(package, name);
            if (!sym) {
                fatal_error(typespec->pos, "Unresolved package '%s'", name);
            }
            if (sym->kind != SYM_PACKAGE) {
                fatal_error(typespec->pos, "%s must denote a package", name);
                return ((void*)0);
            }
            package = sym->package;
        }
        const char *name = typespec->names[typespec->num_names - 1];
        Sym *sym = get_package_sym(package, name);
        if (!sym) {
            fatal_error(typespec->pos, "Unresolved type name '%s'", name);
        }
        if (sym->kind != SYM_TYPE) {
            fatal_error(typespec->pos, "%s must denote a type", name);
            return ((void*)0);
        }
        resolve_sym(sym);
        set_resolved_sym(typespec, sym);
        result = sym->type;
        break;
    }
    case 132:
        result = resolve_typespec_strict(typespec->base, with_const);
        if (with_const) {
            result = type_const(result);
        }
        break;
    case 129:
        result = type_ptr(resolve_typespec_strict(typespec->base, with_const));
        break;
    case 133: {
        int size = 0;
        Type *base = resolve_typespec_strict(typespec->base, with_const);
        if (typespec->num_elems) {
            Operand operand = resolve_const_expr(typespec->num_elems);
            if (!is_integer_type(operand.type)) {
                fatal_error(typespec->pos, "Array size constant expression must have integer type");
            }
            cast_operand(&operand, type_int);
            size = operand.val.i;
            if (size < 0) {
                fatal_error(typespec->num_elems->pos, "Non-positive array size");
            }
        }
        result = type_array(base, size, typespec->num_elems == ((void*)0));
        break;
    }
    case 131: {
        Type **args = ((void*)0);
        for (size_t i = 0; i < typespec->func.num_args; i++) {
            Type *arg = resolve_typespec_strict(typespec->func.args[i], with_const);
            if (arg == type_void) {
                fatal_error(typespec->pos, "Function parameter type cannot be void");
            }
            arg = incomplete_decay(arg);
            buf_push(args, arg);
        }
        Type *ret = type_void;
        if (typespec->func.ret) {
            ret = incomplete_decay(resolve_typespec_strict(typespec->func.ret, with_const));
        }
        if (is_array_type(ret)) {
            fatal_error(typespec->pos, "Function return type cannot be array");
        }

        result = type_func(args, buf_len(args), ret, 0, 0, type_void);
        break;
    }
    case 128: {
        Type **fields = ((void*)0);
        for (size_t i = 0; i < typespec->tuple.num_fields; i++) {
            Type *field = resolve_typespec_strict(typespec->tuple.fields[i], with_const);
            if (field == type_void) {
                fatal_error(typespec->pos, "Tuple element types cannot be void");
            }
            buf_push(fields, field);
        }
        result = type_tuple(fields, buf_len(fields));
        if (!get_reachable(result)) {
            set_reachable(result);
        }
        break;
    }
    default:
        assert(0);
        return ((void*)0);
    }
    set_resolved_type(typespec, result);
    return result;
}

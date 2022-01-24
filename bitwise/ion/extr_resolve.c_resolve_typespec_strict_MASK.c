#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct TYPE_19__ {size_t num_fields; TYPE_4__** fields; } ;
struct TYPE_18__ {size_t num_args; TYPE_4__* ret; TYPE_4__** args; } ;
struct TYPE_20__ {int kind; char** names; int /*<<< orphan*/  pos; TYPE_3__ tuple; TYPE_2__ func; TYPE_13__* num_elems; struct TYPE_20__* base; int /*<<< orphan*/  num_names; } ;
typedef  TYPE_4__ Typespec ;
typedef  int /*<<< orphan*/  Type ;
struct TYPE_17__ {int i; } ;
struct TYPE_22__ {TYPE_1__ val; int /*<<< orphan*/  type; } ;
struct TYPE_21__ {int /*<<< orphan*/ * type; int /*<<< orphan*/  kind; int /*<<< orphan*/ * package; } ;
struct TYPE_16__ {int /*<<< orphan*/  pos; } ;
typedef  TYPE_5__ Sym ;
typedef  int /*<<< orphan*/  Package ;
typedef  TYPE_6__ Operand ;

/* Variables and functions */
 int /*<<< orphan*/  SYM_PACKAGE ; 
 int /*<<< orphan*/  SYM_TYPE ; 
#define  TYPESPEC_ARRAY 133 
#define  TYPESPEC_CONST 132 
#define  TYPESPEC_FUNC 131 
#define  TYPESPEC_NAME 130 
#define  TYPESPEC_PTR 129 
#define  TYPESPEC_TUPLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * current_package ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_6__ FUNC10 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  type_int ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * type_void ; 

Type *FUNC20(Typespec *typespec, bool with_const) {
    if (!typespec) {
        return type_void;
    }
    Type *result = NULL;
    switch (typespec->kind) {
    case TYPESPEC_NAME: {
        Package *package = current_package;
        for (size_t i = 0; i < typespec->num_names - 1; i++) {
            const char *name = typespec->names[i];
            Sym *sym = FUNC5(package, name);
            if (!sym) {
                FUNC4(typespec->pos, "Unresolved package '%s'", name);
            }
            if (sym->kind != SYM_PACKAGE) {
                FUNC4(typespec->pos, "%s must denote a package", name);
                return NULL;
            }
            package = sym->package;
        }
        const char *name = typespec->names[typespec->num_names - 1];
        Sym *sym = FUNC5(package, name);
        if (!sym) {
            FUNC4(typespec->pos, "Unresolved type name '%s'", name);
        }
        if (sym->kind != SYM_TYPE) {
            FUNC4(typespec->pos, "%s must denote a type", name);
            return NULL;
        }
        FUNC11(sym);
        FUNC13(typespec, sym);
        result = sym->type;
        break;
    }
    case TYPESPEC_CONST:
        result = FUNC20(typespec->base, with_const);
        if (with_const) {
            result = FUNC16(result);
        }
        break;
    case TYPESPEC_PTR:
        result = FUNC18(FUNC20(typespec->base, with_const));
        break;
    case TYPESPEC_ARRAY: {
        int size = 0;
        Type *base = FUNC20(typespec->base, with_const);
        if (typespec->num_elems) {
            Operand operand = FUNC10(typespec->num_elems);
            if (!FUNC9(operand.type)) {
                FUNC4(typespec->pos, "Array size constant expression must have integer type");
            }
            FUNC3(&operand, type_int);
            size = operand.val.i;
            if (size < 0) {
                FUNC4(typespec->num_elems->pos, "Non-positive array size");
            }
        }
        result = FUNC15(base, size, typespec->num_elems == NULL);
        break;
    }
    case TYPESPEC_FUNC: {
        Type **args = NULL;
        for (size_t i = 0; i < typespec->func.num_args; i++) {
            Type *arg = FUNC20(typespec->func.args[i], with_const);
            if (arg == type_void) {
                FUNC4(typespec->pos, "Function parameter type cannot be void");
            }
            arg = FUNC7(arg);
            FUNC2(args, arg);
        }
        Type *ret = type_void;
        if (typespec->func.ret) {
            ret = FUNC7(FUNC20(typespec->func.ret, with_const));
        }
        if (FUNC8(ret)) {
            FUNC4(typespec->pos, "Function return type cannot be array");
        }
        // TODO: func pointers should be able to support varargs (including typed)
        result = FUNC17(args, FUNC1(args), ret, false, false, type_void);
        break;
    }
    case TYPESPEC_TUPLE: {
        Type **fields = NULL;
        for (size_t i = 0; i < typespec->tuple.num_fields; i++) {
            Type *field = FUNC20(typespec->tuple.fields[i], with_const);
            if (field == type_void) {
                FUNC4(typespec->pos, "Tuple element types cannot be void");
            }
            FUNC2(fields, field);
        }
        result = FUNC19(fields, FUNC1(fields));
        if (!FUNC6(result)) {
            FUNC12(result);
        }
        break;
    }
    default:
        FUNC0(0);
        return NULL;
    }
    FUNC14(typespec, result);
    return result;
}
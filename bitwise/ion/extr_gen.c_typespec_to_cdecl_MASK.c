#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t num_args; TYPE_2__* ret; int /*<<< orphan*/  has_varargs; TYPE_2__** args; } ;
struct TYPE_9__ {int kind; TYPE_1__ func; int /*<<< orphan*/  num_elems; struct TYPE_9__* base; } ;
typedef  TYPE_2__ Typespec ;
struct TYPE_10__ {char const* typeid; } ;
typedef  TYPE_3__ Type ;

/* Variables and functions */
#define  TYPESPEC_ARRAY 133 
#define  TYPESPEC_CONST 132 
#define  TYPESPEC_FUNC 131 
#define  TYPESPEC_NAME 130 
#define  TYPESPEC_PTR 129 
#define  TYPESPEC_TUPLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 char* FUNC2 (char*,char const) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_3__* FUNC5 (TYPE_2__*) ; 
 char* FUNC6 (char*,char const*,...) ; 

char *FUNC7(Typespec *typespec, const char *str) {
    if (!typespec) {
        return FUNC6("void%s%s", *str ? " " : "", str);
    }
    switch (typespec->kind) {
    case TYPESPEC_NAME:
        return FUNC6("%s%s%s", FUNC4(typespec), *str ? " " : "", str);
    case TYPESPEC_PTR:
        return FUNC7(typespec->base, FUNC2(FUNC6("*%s", str), *str));
    case TYPESPEC_CONST:
        return FUNC7(typespec->base, str);
        // return typespec_to_cdecl(typespec->base, strf("const %s", cdecl_paren(str, *str)));
    case TYPESPEC_ARRAY:
        if (typespec->num_elems == 0) {
            return FUNC7(typespec->base, FUNC2(FUNC6("%s[]", str), *str));
        } else {
            return FUNC7(typespec->base, FUNC2(FUNC6("%s[%s]", str, FUNC3(typespec->num_elems)), *str));
        }
    case TYPESPEC_FUNC: {
        char *result = NULL;
        FUNC1(result, "(*%s)(", str);
        if (typespec->func.num_args == 0) {
            FUNC1(result, "void");
        } else {
            for (size_t i = 0; i < typespec->func.num_args; i++) {
                FUNC1(result, "%s%s", i == 0 ? "" : ", ", FUNC7(typespec->func.args[i], ""));
            }
        }
        if (typespec->func.has_varargs) {
            FUNC1(result, ", ...");
        }
        FUNC1(result, ")");
        return FUNC7(typespec->func.ret, result);
    }
    case TYPESPEC_TUPLE: {
        Type *type = FUNC5(typespec);
        return FUNC6("tuple%d %s", type->typeid, str);
    }
    default:
        FUNC0(0);
        return NULL;
    }
}
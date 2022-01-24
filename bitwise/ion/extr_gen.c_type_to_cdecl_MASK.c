#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t num_params; TYPE_2__* ret; int /*<<< orphan*/  has_varargs; TYPE_2__** params; } ;
struct TYPE_6__ {int kind; TYPE_1__ func; int /*<<< orphan*/  num_elems; struct TYPE_6__* base; } ;
typedef  TYPE_2__ Type ;

/* Variables and functions */
#define  TYPE_ARRAY 131 
#define  TYPE_CONST 130 
#define  TYPE_FUNC 129 
#define  TYPE_PTR 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 char* FUNC2 (char const*,char const) ; 
 char* FUNC3 (char*,char const*,...) ; 

char *FUNC4(Type *type, const char *str) {
    switch (type->kind) {
    case TYPE_PTR:
        return FUNC4(type->base, FUNC2(FUNC3("*%s", str), *str));
    case TYPE_CONST:
        return FUNC4(type->base, FUNC3("const %s", FUNC2(str, *str)));
    case TYPE_ARRAY:
        if (type->num_elems == 0) {
            return FUNC4(type->base, FUNC2(FUNC3("%s[]", str), *str));
        } else {
            return FUNC4(type->base, FUNC2(FUNC3("%s[%zu]", str, type->num_elems), *str));
        }
    case TYPE_FUNC: {
        char *result = NULL;
        FUNC0(result, "(*%s)(", str);
        if (type->func.num_params == 0) {
            FUNC0(result, "void");
        } else {
            for (size_t i = 0; i < type->func.num_params; i++) {
                FUNC0(result, "%s%s", i == 0 ? "" : ", ", FUNC4(type->func.params[i], ""));
            }
        }
        if (type->func.has_varargs) {
            FUNC0(result, ", ...");
        }
        FUNC0(result, ")");
        return FUNC4(type->func.ret, result);
    }
    default:
        return FUNC3("%s%s%s", FUNC1(type), *str ? " " : "", str);
    }
}
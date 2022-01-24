#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t num_fields; TYPE_2__* fields; } ;
struct TYPE_8__ {size_t num_params; TYPE_4__* ret; int /*<<< orphan*/  has_varargs; TYPE_4__** params; } ;
struct TYPE_11__ {size_t kind; TYPE_3__ aggregate; TYPE_1__ func; int /*<<< orphan*/  num_elems; struct TYPE_11__* base; TYPE_7__* sym; } ;
typedef  TYPE_4__ Type ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_4__* type; } ;

/* Variables and functions */
#define  TYPE_ARRAY 136 
#define  TYPE_CONST 135 
#define  TYPE_ENUM 134 
#define  TYPE_FUNC 133 
#define  TYPE_INCOMPLETE 132 
#define  TYPE_PTR 131 
#define  TYPE_STRUCT 130 
#define  TYPE_TUPLE 129 
#define  TYPE_UNION 128 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 char** type_names ; 
 TYPE_4__* type_void ; 

void FUNC2(char **buf, Type *type) {
    const char *type_name = type_names[type->kind];
    if (type_name) {
        FUNC1(*buf, "%s", type_name);
    } else {
        switch (type->kind) {
        case TYPE_STRUCT:
        case TYPE_UNION:
        case TYPE_ENUM:
        case TYPE_INCOMPLETE:
            FUNC0(type->sym);
            FUNC1(*buf, "%s", type->sym->name);
            break;
        case TYPE_CONST:
            FUNC2(buf, type->base);
            FUNC1(*buf, " const");
            break;
        case TYPE_PTR:
            FUNC2(buf, type->base);
            FUNC1(*buf, "*");
            break;
        case TYPE_ARRAY:
            FUNC2(buf, type->base);
            FUNC1(*buf, "[%zu]", type->num_elems);
            break;
        case TYPE_FUNC:
            FUNC1(*buf, "func(");
            for (size_t i = 0; i < type->func.num_params; i++) {
                if (i != 0) {
                    FUNC1(*buf, ", ");
                }
                FUNC2(buf, type->func.params[i]);
            }
            if (type->func.has_varargs) {
                FUNC1(*buf, "...");
            }
            FUNC1(*buf, ")");
            if (type->func.ret != type_void) {
                FUNC1(*buf, ": ");
                FUNC2(buf, type->func.ret);
            }
            break;
        case TYPE_TUPLE:
            FUNC1(*buf, "{");
            for (size_t i = 0; i < type->aggregate.num_fields; i++) {
                if (i != 0) {
                    FUNC1(*buf, ", ");
                }
                FUNC2(buf, type->aggregate.fields[i].type);
            }
            FUNC1(*buf, "}");
            break;
        default:
            FUNC0(0);
            break;
        }
    }
}
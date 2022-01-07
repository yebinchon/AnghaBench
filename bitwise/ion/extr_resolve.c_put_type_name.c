
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t num_fields; TYPE_2__* fields; } ;
struct TYPE_8__ {size_t num_params; TYPE_4__* ret; int has_varargs; TYPE_4__** params; } ;
struct TYPE_11__ {size_t kind; TYPE_3__ aggregate; TYPE_1__ func; int num_elems; struct TYPE_11__* base; TYPE_7__* sym; } ;
typedef TYPE_4__ Type ;
struct TYPE_12__ {int name; } ;
struct TYPE_9__ {TYPE_4__* type; } ;
 int assert (TYPE_7__*) ;
 int buf_printf (char*,char*,...) ;
 char** type_names ;
 TYPE_4__* type_void ;

void put_type_name(char **buf, Type *type) {
    const char *type_name = type_names[type->kind];
    if (type_name) {
        buf_printf(*buf, "%s", type_name);
    } else {
        switch (type->kind) {
        case 130:
        case 128:
        case 134:
        case 132:
            assert(type->sym);
            buf_printf(*buf, "%s", type->sym->name);
            break;
        case 135:
            put_type_name(buf, type->base);
            buf_printf(*buf, " const");
            break;
        case 131:
            put_type_name(buf, type->base);
            buf_printf(*buf, "*");
            break;
        case 136:
            put_type_name(buf, type->base);
            buf_printf(*buf, "[%zu]", type->num_elems);
            break;
        case 133:
            buf_printf(*buf, "func(");
            for (size_t i = 0; i < type->func.num_params; i++) {
                if (i != 0) {
                    buf_printf(*buf, ", ");
                }
                put_type_name(buf, type->func.params[i]);
            }
            if (type->func.has_varargs) {
                buf_printf(*buf, "...");
            }
            buf_printf(*buf, ")");
            if (type->func.ret != type_void) {
                buf_printf(*buf, ": ");
                put_type_name(buf, type->func.ret);
            }
            break;
        case 129:
            buf_printf(*buf, "{");
            for (size_t i = 0; i < type->aggregate.num_fields; i++) {
                if (i != 0) {
                    buf_printf(*buf, ", ");
                }
                put_type_name(buf, type->aggregate.fields[i].type);
            }
            buf_printf(*buf, "}");
            break;
        default:
            assert(0);
            break;
        }
    }
}

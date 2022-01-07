
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t num_params; TYPE_2__* ret; int has_varargs; TYPE_2__** params; } ;
struct TYPE_6__ {int kind; TYPE_1__ func; int num_elems; struct TYPE_6__* base; } ;
typedef TYPE_2__ Type ;






 int buf_printf (char*,char*,...) ;
 int cdecl_name (TYPE_2__*) ;
 char* cdecl_paren (char const*,char const) ;
 char* strf (char*,char const*,...) ;

char *type_to_cdecl(Type *type, const char *str) {
    switch (type->kind) {
    case 128:
        return type_to_cdecl(type->base, cdecl_paren(strf("*%s", str), *str));
    case 130:
        return type_to_cdecl(type->base, strf("const %s", cdecl_paren(str, *str)));
    case 131:
        if (type->num_elems == 0) {
            return type_to_cdecl(type->base, cdecl_paren(strf("%s[]", str), *str));
        } else {
            return type_to_cdecl(type->base, cdecl_paren(strf("%s[%zu]", str, type->num_elems), *str));
        }
    case 129: {
        char *result = ((void*)0);
        buf_printf(result, "(*%s)(", str);
        if (type->func.num_params == 0) {
            buf_printf(result, "void");
        } else {
            for (size_t i = 0; i < type->func.num_params; i++) {
                buf_printf(result, "%s%s", i == 0 ? "" : ", ", type_to_cdecl(type->func.params[i], ""));
            }
        }
        if (type->func.has_varargs) {
            buf_printf(result, ", ...");
        }
        buf_printf(result, ")");
        return type_to_cdecl(type->func.ret, result);
    }
    default:
        return strf("%s%s%s", cdecl_name(type), *str ? " " : "", str);
    }
}

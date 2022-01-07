
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t kind; int sym; int typeid; } ;
typedef TYPE_1__ Type ;


 size_t TYPE_TUPLE ;
 int assert (int ) ;
 char const* get_gen_name (int ) ;
 char const* strf (char*,int ) ;
 char** type_names ;

const char *cdecl_name(Type *type) {
    const char *type_name = type_names[type->kind];
    if (type_name) {
        return type_name;
    } else if (type->kind == TYPE_TUPLE) {
        return strf("tuple%d", type->typeid);
    } else {
        assert(type->sym);
        return get_gen_name(type->sym);
    }
}

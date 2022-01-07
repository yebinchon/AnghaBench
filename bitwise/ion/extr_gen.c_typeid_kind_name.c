
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t kind; } ;
typedef TYPE_1__ Type ;


 size_t NUM_TYPE_KINDS ;
 char** typeid_kind_names ;

const char *typeid_kind_name(Type *type) {
    if (type->kind < NUM_TYPE_KINDS) {
        const char *name = typeid_kind_names[type->kind];
        if (name) {
            return name;
        }
    }
    return "TYPE_NONE";
}

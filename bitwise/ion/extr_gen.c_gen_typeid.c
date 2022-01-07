
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; int typeid; } ;
typedef TYPE_1__ Type ;


 int genf (char*,int ,int ,...) ;
 scalar_t__ is_excluded_typeinfo (TYPE_1__*) ;
 int type_to_cdecl (TYPE_1__*,char*) ;
 int typeid_kind_name (TYPE_1__*) ;

void gen_typeid(Type *type) {
    if (type->size == 0 || is_excluded_typeinfo(type)) {
        genf("TYPEID0(%d, %s)", type->typeid, typeid_kind_name(type));
    } else {
        genf("TYPEID(%d, %s, %s)", type->typeid, typeid_kind_name(type), type_to_cdecl(type, ""));
    }
}

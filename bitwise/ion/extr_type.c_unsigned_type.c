
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int kind; } ;
typedef TYPE_1__ Type ;
 int assert (int ) ;
 TYPE_1__* type_bool ;
 TYPE_1__* type_uchar ;
 TYPE_1__* type_uint ;
 TYPE_1__* type_ullong ;
 TYPE_1__* type_ulong ;
 TYPE_1__* type_ushort ;

Type *unsigned_type(Type *type) {
    switch (type->kind) {
    case 139:
        return type_bool;
    case 138:
    case 134:
    case 132:
        return type_uchar;
    case 133:
    case 128:
        return type_ushort;
    case 137:
    case 131:
        return type_uint;
    case 135:
    case 129:
        return type_ulong;
    case 136:
    case 130:
        return type_ullong;
    default:
        assert(0);
        return ((void*)0);
    }
}

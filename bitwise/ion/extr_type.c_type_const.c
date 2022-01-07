
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ kind; int nonmodifiable; struct TYPE_10__* base; int align; int size; } ;
typedef TYPE_1__ Type ;


 scalar_t__ TYPE_CONST ;
 int cached_const_types ;
 int complete_type (TYPE_1__*) ;
 TYPE_1__* map_get (int *,TYPE_1__*) ;
 int map_put (int *,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* type_alloc (scalar_t__) ;

Type *type_const(Type *base) {
    if (base->kind == TYPE_CONST) {
        return base;
    }
    Type *type = map_get(&cached_const_types, base);
    if (!type) {
        complete_type(base);
        type = type_alloc(TYPE_CONST);
        type->nonmodifiable = 1;
        type->size = base->size;
        type->align = base->align;
        type->base = base;
        map_put(&cached_const_types, base, type);
    }
    return type;
}

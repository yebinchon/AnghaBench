
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* base; int align; int size; } ;
typedef TYPE_1__ Type ;
struct TYPE_11__ {int align; int size; } ;


 size_t TYPE_PTR ;
 int cached_ptr_types ;
 TYPE_1__* map_get (int *,TYPE_1__*) ;
 int map_put (int *,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* type_alloc (size_t) ;
 TYPE_4__* type_metrics ;

Type *type_ptr(Type *base) {
    Type *type = map_get(&cached_ptr_types, base);
    if (!type) {
        type = type_alloc(TYPE_PTR);
        type->size = type_metrics[TYPE_PTR].size;
        type->align = type_metrics[TYPE_PTR].align;
        type->base = base;
        map_put(&cached_ptr_types, base, type);
    }
    return type;
}

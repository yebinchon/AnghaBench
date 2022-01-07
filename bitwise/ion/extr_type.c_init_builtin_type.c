
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t kind; int align; int size; scalar_t__ typeid; } ;
typedef TYPE_1__ Type ;
struct TYPE_6__ {int align; int size; } ;


 int next_typeid ;
 int register_typeid (TYPE_1__*) ;
 TYPE_2__* type_metrics ;

void init_builtin_type(Type *type) {
    type->typeid = next_typeid++;
    register_typeid(type);
    type->size = type_metrics[type->kind].size;
    type->align = type_metrics[type->kind].align;
}

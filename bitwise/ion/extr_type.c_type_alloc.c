
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TypeKind ;
struct TYPE_5__ {scalar_t__ typeid; int kind; } ;
typedef TYPE_1__ Type ;


 int next_typeid ;
 int register_typeid (TYPE_1__*) ;
 TYPE_1__* xcalloc (int,int) ;

Type *type_alloc(TypeKind kind) {
    Type *type = xcalloc(1, sizeof(Type));
    type->kind = kind;
    type->typeid = next_typeid++;
    register_typeid(type);
    return type;
}

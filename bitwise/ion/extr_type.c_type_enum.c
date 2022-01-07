
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int align; int size; struct TYPE_6__* base; int * sym; } ;
typedef TYPE_1__ Type ;
struct TYPE_7__ {int align; int size; } ;
typedef int Sym ;


 int TYPE_ENUM ;
 TYPE_1__* type_alloc (int ) ;
 TYPE_2__* type_int ;

Type *type_enum(Sym *sym, Type *base) {
    Type *type = type_alloc(TYPE_ENUM);
    type->sym = sym;
    type->base = base;
    type->size = type_int->size;
    type->align = type_int->align;
    return type;
}

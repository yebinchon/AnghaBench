
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sym; } ;
typedef TYPE_1__ Type ;
typedef int Sym ;


 int TYPE_INCOMPLETE ;
 TYPE_1__* type_alloc (int ) ;

Type *type_incomplete(Sym *sym) {
    Type *type = type_alloc(TYPE_INCOMPLETE);
    type->sym = sym;
    return type;
}

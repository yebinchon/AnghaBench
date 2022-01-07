
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* base; } ;
typedef TYPE_1__ Typespec ;
typedef int SrcPos ;


 int TYPESPEC_PTR ;
 TYPE_1__* new_typespec (int ,int ) ;

Typespec *new_typespec_ptr(SrcPos pos, Typespec *base) {
    Typespec *t = new_typespec(TYPESPEC_PTR, pos);
    t->base = base;
    return t;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * num_elems; struct TYPE_5__* base; } ;
typedef TYPE_1__ Typespec ;
typedef int SrcPos ;
typedef int Expr ;


 int TYPESPEC_ARRAY ;
 TYPE_1__* new_typespec (int ,int ) ;

Typespec *new_typespec_array(SrcPos pos, Typespec *base, Expr *num_elems) {
    Typespec *t = new_typespec(TYPESPEC_ARRAY, pos);
    t->base = base;
    t->num_elems = num_elems;
    return t;
}

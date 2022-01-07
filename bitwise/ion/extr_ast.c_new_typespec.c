
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TypespecKind ;
struct TYPE_4__ {int pos; int kind; } ;
typedef TYPE_1__ Typespec ;
typedef int SrcPos ;


 TYPE_1__* ast_alloc (int) ;

Typespec *new_typespec(TypespecKind kind, SrcPos pos) {
    Typespec *t = ast_alloc(sizeof(Typespec));
    t->kind = kind;
    t->pos = pos;
    return t;
}

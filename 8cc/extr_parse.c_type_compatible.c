
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; struct TYPE_9__* ptr; } ;
typedef TYPE_1__ Type ;


 scalar_t__ KIND_STRUCT ;
 scalar_t__ is_arithtype (TYPE_1__*) ;
 int is_same_struct (TYPE_1__*,TYPE_1__*) ;
 int same_arith_type (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static bool type_compatible(Type *a, Type *b) {
    if (a->kind == KIND_STRUCT)
        return is_same_struct(a, b);
    if (a->kind != b->kind)
        return 0;
    if (a->ptr && b->ptr)
        return type_compatible(a->ptr, b->ptr);
    if (is_arithtype(a) && is_arithtype(b))
        return same_arith_type(a, b);
    return 1;
}

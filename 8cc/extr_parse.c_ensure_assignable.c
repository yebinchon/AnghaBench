
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;


 scalar_t__ KIND_PTR ;
 int error (char*,char*,char*) ;
 scalar_t__ is_arithtype (TYPE_1__*) ;
 scalar_t__ is_same_struct (TYPE_1__*,TYPE_1__*) ;
 char* ty2s (TYPE_1__*) ;

__attribute__((used)) static void ensure_assignable(Type *totype, Type *fromtype) {
    if ((is_arithtype(totype) || totype->kind == KIND_PTR) &&
        (is_arithtype(fromtype) || fromtype->kind == KIND_PTR))
        return;
    if (is_same_struct(totype, fromtype))
        return;
    error("incompatible kind: <%s> <%s>", ty2s(totype), ty2s(fromtype));
}

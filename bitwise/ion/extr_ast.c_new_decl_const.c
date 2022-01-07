
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_5__ {int * expr; int * type; } ;
struct TYPE_6__ {TYPE_1__ const_decl; } ;
typedef int SrcPos ;
typedef int Expr ;
typedef TYPE_2__ Decl ;


 int DECL_CONST ;
 TYPE_2__* new_decl (int ,int ,char const*) ;

Decl *new_decl_const(SrcPos pos, const char *name, Typespec *type, Expr *expr) {
    Decl *d = new_decl(DECL_CONST, pos, name);
    d->const_decl.type = type;
    d->const_decl.expr = expr;
    return d;
}

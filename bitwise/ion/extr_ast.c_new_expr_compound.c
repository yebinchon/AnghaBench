
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_5__ {size_t num_fields; int fields; int * type; } ;
struct TYPE_6__ {TYPE_1__ compound; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;
typedef int CompoundField ;


 int AST_DUP (int *) ;
 int EXPR_COMPOUND ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_compound(SrcPos pos, Typespec *type, CompoundField *fields, size_t num_fields) {
    Expr *e = new_expr(EXPR_COMPOUND, pos);
    e->compound.type = type;
    e->compound.fields = AST_DUP(fields);
    e->compound.num_fields = num_fields;
    return e;
}

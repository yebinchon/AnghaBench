
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_5__ {char const* name; int * type; } ;
struct TYPE_6__ {TYPE_1__ offsetof_field; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_OFFSETOF ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_offsetof(SrcPos pos, Typespec *type, const char *name) {
    Expr *e = new_expr(EXPR_OFFSETOF, pos);
    e->offsetof_field.type = type;
    e->offsetof_field.name = name;
    return e;
}

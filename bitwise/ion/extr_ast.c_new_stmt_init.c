
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_5__ {char const* name; int is_undef; int * expr; int * type; } ;
struct TYPE_6__ {TYPE_1__ init; } ;
typedef TYPE_2__ Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 int STMT_INIT ;
 TYPE_2__* new_stmt (int ,int ) ;

Stmt *new_stmt_init(SrcPos pos, const char *name, Typespec *type, Expr *expr, bool is_undef) {
    Stmt *s = new_stmt(STMT_INIT, pos);
    s->init.name = name;
    s->init.type = type;
    s->init.expr = expr;
    s->init.is_undef = is_undef;
    return s;
}

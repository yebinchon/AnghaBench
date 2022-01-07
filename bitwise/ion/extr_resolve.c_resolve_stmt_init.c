
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Type ;
struct TYPE_4__ {int name; int is_undef; int expr; int type; } ;
struct TYPE_5__ {scalar_t__ kind; int pos; TYPE_1__ init; } ;
typedef TYPE_2__ Stmt ;


 scalar_t__ STMT_INIT ;
 int assert (int) ;
 int fatal_error (int ,char*) ;
 int * resolve_init (int ,int ,int ,int,int ) ;
 int sym_push_var (int ,int *) ;

void resolve_stmt_init(Stmt *stmt) {
    assert(stmt->kind == STMT_INIT);
    Type *type = resolve_init(stmt->pos, stmt->init.type, stmt->init.expr, 0, stmt->init.is_undef);
    if (!sym_push_var(stmt->init.name, type)) {
        fatal_error(stmt->pos, "Shadowed definition of local symbol");
    }
}

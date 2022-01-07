
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Type ;
struct TYPE_3__ {size_t num_stmts; int * stmts; } ;
typedef int Sym ;
typedef TYPE_1__ StmtList ;
typedef int StmtCtx ;


 scalar_t__ resolve_stmt (int ,int *,int ) ;
 int * sym_enter () ;
 int sym_leave (int *) ;

bool resolve_stmt_block(StmtList block, Type *ret_type, StmtCtx ctx) {
    Sym *scope = sym_enter();
    bool returns = 0;
    for (size_t i = 0; i < block.num_stmts; i++) {
        returns = resolve_stmt(block.stmts[i], ret_type, ctx) || returns;
    }
    sym_leave(scope);
    return returns;
}

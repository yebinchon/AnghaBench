
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 int * new_stmt_while (int ,int *,int ) ;
 int * parse_paren_expr () ;
 int parse_stmt_block () ;

Stmt *parse_stmt_while(SrcPos pos) {
    Expr *cond = parse_paren_expr();
    return new_stmt_while(pos, cond, parse_stmt_block());
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int Token ;
struct TYPE_11__ {scalar_t__ kind; } ;
struct TYPE_10__ {TYPE_1__* ty; } ;
struct TYPE_9__ {scalar_t__ kind; TYPE_7__* ptr; } ;
typedef TYPE_2__ Node ;


 int AST_DEREF ;
 scalar_t__ KIND_FUNC ;
 scalar_t__ KIND_PTR ;
 TYPE_2__* ast_uop (int ,TYPE_7__*,TYPE_2__*) ;
 TYPE_2__* conv (int ) ;
 int errort (int *,char*,int ) ;
 int node2s (TYPE_2__*) ;
 int read_cast_expr () ;

__attribute__((used)) static Node *read_unary_deref(Token *tok) {
    Node *operand = conv(read_cast_expr());
    if (operand->ty->kind != KIND_PTR)
        errort(tok, "pointer type expected, but got %s", node2s(operand));
    if (operand->ty->ptr->kind == KIND_FUNC)
        return operand;
    return ast_uop(AST_DEREF, operand->ty->ptr, operand);
}

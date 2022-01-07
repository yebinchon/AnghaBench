
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int operand; TYPE_2__* ty; } ;
struct TYPE_6__ {TYPE_1__* ptr; } ;
struct TYPE_5__ {int size; } ;
typedef TYPE_3__ Node ;


 int SAVE ;
 int emit (char*,char*,int) ;
 int emit_expr (int ) ;
 int emit_store (int ) ;
 int pop (char*) ;
 int push (char*) ;

__attribute__((used)) static void emit_post_inc_dec(Node *node, char *op) {
    SAVE;
    emit_expr(node->operand);
    push("rax");
    emit("%s $%d, #rax", op, node->ty->ptr ? node->ty->ptr->size : 1);
    emit_store(node->operand);
    pop("rax");
}

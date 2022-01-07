
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ty; } ;
struct TYPE_6__ {TYPE_3__* operand; } ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_2__ Node ;


 int SAVE ;
 int do_emit_assign_deref (int ,int ) ;
 int emit_expr (TYPE_3__*) ;
 int push (char*) ;

__attribute__((used)) static void emit_assign_deref(Node *var) {
    SAVE;
    push("rax");
    emit_expr(var->operand);
    do_emit_assign_deref(var->operand->ty->ptr, 0);
}

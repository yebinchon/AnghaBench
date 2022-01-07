
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ty; } ;
struct TYPE_6__ {TYPE_3__* operand; int ty; } ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_2__ Node ;


 int SAVE ;
 int emit_expr (TYPE_3__*) ;
 int emit_lload (int ,char*,int ) ;
 int emit_load_convert (int ,int ) ;

__attribute__((used)) static void emit_deref(Node *node) {
    SAVE;
    emit_expr(node->operand);
    emit_lload(node->operand->ty->ptr, "rax", 0);
    emit_load_convert(node->ty, node->operand->ty->ptr);
}

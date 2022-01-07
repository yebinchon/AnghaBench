
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ty; } ;
struct TYPE_4__ {TYPE_2__* operand; int ty; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit_expr (TYPE_2__*) ;
 int emit_load_convert (int ,int ) ;

__attribute__((used)) static void emit_cast(Node *node) {
    SAVE;
    emit_expr(node->operand);
    emit_load_convert(node->ty, node->operand->ty);
    return;
}

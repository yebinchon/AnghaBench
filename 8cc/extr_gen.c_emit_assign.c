
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int ty; } ;
struct TYPE_10__ {TYPE_1__* ty; } ;
struct TYPE_9__ {TYPE_3__* left; TYPE_4__* right; int ty; } ;
struct TYPE_8__ {scalar_t__ kind; int size; } ;
typedef TYPE_2__ Node ;


 scalar_t__ KIND_STRUCT ;
 int SAVE ;
 int emit_copy_struct (TYPE_3__*,TYPE_4__*) ;
 int emit_expr (TYPE_4__*) ;
 int emit_load_convert (int ,int ) ;
 int emit_store (TYPE_3__*) ;

__attribute__((used)) static void emit_assign(Node *node) {
    SAVE;
    if (node->left->ty->kind == KIND_STRUCT &&
        node->left->ty->size > 8) {
        emit_copy_struct(node->left, node->right);
    } else {
        emit_expr(node->right);
        emit_load_convert(node->ty, node->right->ty);
        emit_store(node->left);
    }
}

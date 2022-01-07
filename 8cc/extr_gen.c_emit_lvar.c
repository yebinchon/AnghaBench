
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loff; int ty; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit_lload (int ,char*,int ) ;
 int ensure_lvar_init (TYPE_1__*) ;

__attribute__((used)) static void emit_lvar(Node *node) {
    SAVE;
    ensure_lvar_init(node);
    emit_lload(node->ty, "rbp", node->loff);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* declvar; int declinit; } ;
struct TYPE_6__ {TYPE_1__* ty; int loff; } ;
struct TYPE_5__ {int size; } ;
typedef TYPE_3__ Node ;


 int SAVE ;
 int emit_decl_init (int ,int ,int ) ;

__attribute__((used)) static void emit_decl(Node *node) {
    SAVE;
    if (!node->declinit)
        return;
    emit_decl_init(node->declinit, node->declvar->loff, node->declvar->ty->size);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int glabel; int ty; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit_gload (int ,int ,int ) ;

__attribute__((used)) static void emit_gvar(Node *node) {
    SAVE;
    emit_gload(node->ty, node->glabel, 0);
}

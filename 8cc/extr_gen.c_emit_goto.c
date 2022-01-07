
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int newlabel; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int assert (int ) ;
 int emit_jmp (int ) ;

__attribute__((used)) static void emit_goto(Node *node) {
    SAVE;
    assert(node->newlabel);
    emit_jmp(node->newlabel);
}

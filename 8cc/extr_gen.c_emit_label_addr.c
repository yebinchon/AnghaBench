
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int newlabel; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit (char*,int ) ;

__attribute__((used)) static void emit_label_addr(Node *node) {
    SAVE;
    emit("mov $%s, #rax", node->newlabel);
}

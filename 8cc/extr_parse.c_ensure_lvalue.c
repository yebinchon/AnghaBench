
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kind; } ;
typedef TYPE_1__ Node ;






 int error (char*,int ) ;
 int node2s (TYPE_1__*) ;

__attribute__((used)) static void ensure_lvalue(Node *node) {
    switch (node->kind) {
    case 129: case 130: case 131: case 128:
        return;
    default:
        error("lvalue expected, but got %s", node2s(node));
    }
}

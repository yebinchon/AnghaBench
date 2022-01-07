
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int operand; } ;
typedef TYPE_1__ Node ;
typedef int Buffer ;


 int buf_printf (int *,char*,char*,int ) ;
 int node2s (int ) ;

__attribute__((used)) static void uop_to_string(Buffer *b, char *op, Node *node) {
    buf_printf(b, "(%s %s)", op, node2s(node->operand));
}

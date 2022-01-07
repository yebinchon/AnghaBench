
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int right; int left; } ;
typedef TYPE_1__ Node ;
typedef int Buffer ;


 int buf_printf (int *,char*,char*,int ,int ) ;
 int node2s (int ) ;

__attribute__((used)) static void binop_to_string(Buffer *b, char *op, Node *node) {
    buf_printf(b, "(%s %s %s)", op, node2s(node->left), node2s(node->right));
}

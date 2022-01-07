
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* parent; } ;
typedef TYPE_1__ node_t ;
typedef int byte ;


 int add_bit (int,int *) ;

__attribute__((used)) static void send(node_t *node, node_t *child, byte *fout) {
 if (node->parent) {
  send(node->parent, node, fout);
 }
 if (child) {
  if (node->right == child) {
   add_bit(1, fout);
  } else {
   add_bit(0, fout);
  }
 }
}

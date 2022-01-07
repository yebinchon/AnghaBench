
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int symbol; struct TYPE_3__* left; struct TYPE_3__* right; } ;
typedef TYPE_1__ node_t ;
typedef int byte ;


 int INTERNAL_NODE ;
 scalar_t__ get_bit (int *) ;

int Huff_Receive (node_t *node, int *ch, byte *fin) {
 while (node && node->symbol == INTERNAL_NODE) {
  if (get_bit(fin)) {
   node = node->right;
  } else {
   node = node->left;
  }
 }
 if (!node) {
  return 0;

 }
 return (*ch = node->symbol);
}

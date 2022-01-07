
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* shortcut; } ;
typedef TYPE_1__ ccv_mser_node_t ;



__attribute__((used)) static ccv_mser_node_t* _ccv_mser_find_root(ccv_mser_node_t* node)
{
 ccv_mser_node_t* prev = node;
 ccv_mser_node_t* root;
 for (;;)
 {
  root = node->shortcut;


  node->shortcut = prev;
  if (root == node)
   break;
  prev = node;
  node = root;
 }
 for (;;)
 {
  prev = node->shortcut;
  node->shortcut = root;
  if (prev == node)
   break;
  node = prev;
 }
 return root;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bintree_node {struct bintree_node* parent; int value; } ;


 int NIL_NODE ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static struct bintree_node *bintree_new_nil_node(struct bintree_node *parent)
{
   struct bintree_node *node = (struct bintree_node *)
      calloc(1, sizeof(struct bintree_node));

   if (!node)
      return ((void*)0);

   node->value = NIL_NODE;
   node->parent = parent;

   return node;
}

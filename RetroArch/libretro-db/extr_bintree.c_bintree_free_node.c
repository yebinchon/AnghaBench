
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bintree_node {struct bintree_node* right; struct bintree_node* left; int * value; } ;


 int * NIL_NODE ;
 int free (struct bintree_node*) ;

__attribute__((used)) static void bintree_free_node(struct bintree_node *n)
{
   if (!n)
      return;

   if (n->value == NIL_NODE)
   {
      free(n);
      return;
   }

   n->value = ((void*)0);
   bintree_free_node(n->left);
   bintree_free_node(n->right);
   free(n);
}

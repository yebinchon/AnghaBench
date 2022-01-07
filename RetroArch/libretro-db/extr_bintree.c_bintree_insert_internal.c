
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bintree_node {struct bintree_node* right; struct bintree_node* left; void* value; } ;
struct TYPE_3__ {int (* cmp ) (void*,void*,int ) ;int ctx; } ;
typedef TYPE_1__ bintree_t ;


 int EINVAL ;
 scalar_t__ bintree_is_nil (struct bintree_node*) ;
 void* bintree_new_nil_node (struct bintree_node*) ;
 int stub1 (void*,void*,int ) ;

__attribute__((used)) static int bintree_insert_internal(bintree_t *t, struct bintree_node *root, void *value)
{
   int cmp_res = 0;

   if (bintree_is_nil(root))
   {
      root->left = bintree_new_nil_node(root);
      root->right = bintree_new_nil_node(root);
      root->value = value;

      return 0;
   }

   cmp_res = t->cmp(root->value, value, t->ctx);

   if (cmp_res > 0)
      return bintree_insert_internal(t, root->left, value);
   else if (cmp_res < 0)
      return bintree_insert_internal(t, root->right, value);
   return -EINVAL;
}

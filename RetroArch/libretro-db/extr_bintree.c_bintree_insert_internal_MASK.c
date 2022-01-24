#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bintree_node {struct bintree_node* right; struct bintree_node* left; void* value; } ;
struct TYPE_3__ {int (* cmp ) (void*,void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ bintree_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bintree_node*) ; 
 void* FUNC1 (struct bintree_node*) ; 
 int FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(bintree_t *t, struct bintree_node *root, void *value)
{
   int cmp_res = 0;

   if (FUNC0(root))
   {
      root->left  = FUNC1(root);
      root->right = FUNC1(root);
      root->value = value;

      return 0;
   }

   cmp_res = t->cmp(root->value, value, t->ctx);

   if (cmp_res > 0)
      return FUNC3(t, root->left, value);
   else if (cmp_res < 0)
      return FUNC3(t, root->right, value);
   return -EINVAL;
}
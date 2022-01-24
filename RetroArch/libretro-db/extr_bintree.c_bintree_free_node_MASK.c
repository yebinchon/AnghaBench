#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bintree_node {struct bintree_node* right; struct bintree_node* left; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct bintree_node*) ; 

__attribute__((used)) static void FUNC1(struct bintree_node *n)
{
   if (!n)
      return;

   if (n->value == NIL_NODE)
   {
      FUNC0(n);
      return;
   }

   n->value = NULL;
   FUNC1(n->left);
   FUNC1(n->right);
   FUNC0(n);
}
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
struct bintree_node {struct bintree_node* parent; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIL_NODE ; 
 scalar_t__ FUNC0 (int,int) ; 

__attribute__((used)) static struct bintree_node *FUNC1(struct bintree_node *parent)
{
   struct bintree_node *node = (struct bintree_node *)
      FUNC0(1, sizeof(struct bintree_node));

   if (!node)
      return NULL;

   node->value  = NIL_NODE;
   node->parent = parent;

   return node;
}
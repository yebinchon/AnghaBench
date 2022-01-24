#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef  TYPE_1__ dat_converter_bt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(dat_converter_bt_node_t* node)
{
   if (!node)
      return;

   FUNC1(node->left);
   FUNC1(node->right);
   FUNC0(node);
}
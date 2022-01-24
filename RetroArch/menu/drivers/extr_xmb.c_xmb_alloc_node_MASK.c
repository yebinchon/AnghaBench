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
struct TYPE_3__ {int /*<<< orphan*/ * fullpath; scalar_t__ content_icon; scalar_t__ icon; scalar_t__ y; scalar_t__ x; scalar_t__ zoom; scalar_t__ label_alpha; scalar_t__ alpha; } ;
typedef  TYPE_1__ xmb_node_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static xmb_node_t *FUNC1(void)
{
   xmb_node_t *node = (xmb_node_t*)FUNC0(sizeof(*node));

   if (!node)
      return NULL;

   node->alpha    = node->label_alpha  = 0;
   node->zoom     = node->x = node->y  = 0;
   node->icon     = node->content_icon = 0;
   node->fullpath = NULL;

   return node;
}
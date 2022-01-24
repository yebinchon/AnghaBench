#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* context; int /*<<< orphan*/  num_swapchain_images; } ;
typedef  TYPE_2__ vk_t ;
struct TYPE_10__ {int /*<<< orphan*/  num_swapchain_images; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(vk_t *vk)
{
   if (!vk->context)
      return;

   vk->num_swapchain_images = vk->context->num_swapchain_images;

   FUNC3(vk);
   FUNC4(vk);
   FUNC2(vk);
   FUNC5(vk);
   FUNC0(vk);
   FUNC1(vk);
}
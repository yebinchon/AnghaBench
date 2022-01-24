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
struct vk_texture {scalar_t__ image; scalar_t__ memory; scalar_t__ buffer; scalar_t__ view; scalar_t__ mapped; } ;
typedef  int /*<<< orphan*/  VkDevice ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vk_texture*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(
      VkDevice device,
      struct vk_texture *tex)
{
   if (tex->mapped)
      FUNC5(device, tex->memory);
   if (tex->view)
      FUNC3(device, tex->view, NULL);
   if (tex->image)
      FUNC2(device, tex->image, NULL);
   if (tex->buffer)
      FUNC1(device, tex->buffer, NULL);
   if (tex->memory)
      FUNC4(device, tex->memory, NULL);

#ifdef VULKAN_DEBUG_TEXTURE_ALLOC
   if (tex->image)
      vulkan_track_dealloc(tex->image);
#endif
   FUNC0(tex, 0, sizeof(*tex));
}
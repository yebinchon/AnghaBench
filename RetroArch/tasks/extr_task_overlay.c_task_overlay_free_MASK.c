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
struct texture_image {int dummy; } ;
struct overlay {size_t pos; unsigned int load_images_size; unsigned int size; scalar_t__ conf; struct overlay* overlays; struct texture_image* load_images; struct overlay* overlay_path; } ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef  TYPE_1__ retro_task_t ;
typedef  struct overlay overlay_loader_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct overlay*) ; 
 int /*<<< orphan*/  FUNC2 (struct texture_image*) ; 
 int /*<<< orphan*/  FUNC3 (struct overlay*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(retro_task_t *task)
{
   unsigned i;
   overlay_loader_t *loader  = (overlay_loader_t*)task->state;
   struct overlay *overlay   = &loader->overlays[loader->pos];

   if (loader->overlay_path)
      FUNC1(loader->overlay_path);

   if (FUNC4(task))
   {
      for (i = 0; i < overlay->load_images_size; i++)
      {
         struct texture_image *ti = &overlay->load_images[i];
         FUNC2(ti);
      }

      for (i = 0; i < loader->size; i++)
         FUNC3(&loader->overlays[i]);

      FUNC1(loader->overlays);
   }

   if (loader->conf)
      FUNC0(loader->conf);

   FUNC1(loader);
}
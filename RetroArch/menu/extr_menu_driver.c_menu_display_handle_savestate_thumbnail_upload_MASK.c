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
typedef  void texture_image ;
typedef  int /*<<< orphan*/  retro_task_t ;
struct TYPE_3__ {int /*<<< orphan*/  type; void* data; } ;
typedef  TYPE_1__ menu_ctx_load_image_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_IMAGE_SAVESTATE_THUMBNAIL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(retro_task_t *task,
      void *task_data,
      void *user_data, const char *err)
{
   menu_ctx_load_image_t load_image_info;
   struct texture_image *img = (struct texture_image*)task_data;

   load_image_info.data = img;
   load_image_info.type = MENU_IMAGE_SAVESTATE_THUMBNAIL;

   FUNC2(&load_image_info);

   FUNC1(img);
   FUNC0(img);
   FUNC0(user_data);
}
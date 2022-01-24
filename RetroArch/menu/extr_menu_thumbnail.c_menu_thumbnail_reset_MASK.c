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
struct TYPE_3__ {float alpha; float delay_timer; scalar_t__ height; scalar_t__ width; scalar_t__ texture; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ menu_thumbnail_t ;
typedef  uintptr_t menu_animation_ctx_tag ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_THUMBNAIL_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 

void FUNC2(menu_thumbnail_t *thumbnail)
{
   if (!thumbnail)
      return;

   if (thumbnail->texture)
   {
      menu_animation_ctx_tag tag = (uintptr_t)&thumbnail->alpha;

      /* Unload texture */
      FUNC1(&thumbnail->texture);

      /* Ensure any 'fade in' animation is killed */
      FUNC0(&tag);
   }

   /* Reset all parameters */
   thumbnail->status      = MENU_THUMBNAIL_STATUS_UNKNOWN;
   thumbnail->texture     = 0;
   thumbnail->width       = 0;
   thumbnail->height      = 0;
   thumbnail->alpha       = 0.0f;
   thumbnail->delay_timer = 0.0f;
}
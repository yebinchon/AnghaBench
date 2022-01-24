#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct tween {scalar_t__ running_since; scalar_t__ duration; scalar_t__ deleted; int /*<<< orphan*/  userdata; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ) ;scalar_t__ target_value; scalar_t__* subject; scalar_t__ initial_value; scalar_t__ (* easing ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  menu_timedate_enable; } ;
struct TYPE_11__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_12__ {int /*<<< orphan*/  p; } ;
struct TYPE_13__ {int in_update; int pending_deletes; TYPE_3__ list; TYPE_3__ pending; } ;

/* Variables and functions */
 TYPE_9__ anim ; 
 int animation_is_active ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__) ; 
 unsigned int FUNC3 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__,unsigned int) ; 
 struct tween* FUNC5 (TYPE_3__,unsigned int) ; 
 scalar_t__ delta_time ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

bool FUNC9(unsigned video_width, unsigned video_height)
{
   unsigned i;
   settings_t *settings = FUNC0();

   FUNC6(settings->bools.menu_timedate_enable, video_width, video_height);

   anim.in_update       = true;
   anim.pending_deletes = false;

   for (i = 0; i < FUNC3(anim.list); i++)
   {
      struct tween *tween   = FUNC5(anim.list, i);

      if (!tween || tween->deleted)
         continue;

      tween->running_since += delta_time;

      *tween->subject = tween->easing(
            tween->running_since,
            tween->initial_value,
            tween->target_value - tween->initial_value,
            tween->duration);

      if (tween->running_since >= tween->duration)
      {
         *tween->subject = tween->target_value;

         if (tween->cb)
            tween->cb(tween->userdata);

         FUNC4(anim.list, i);
         i--;
      }
   }

   if (anim.pending_deletes)
   {
      for (i = 0; i < FUNC3(anim.list); i++)
      {
         struct tween *tween = FUNC5(anim.list, i);
         if (!tween)
            continue;
         if (tween->deleted)
         {
            FUNC4(anim.list, i);
            i--;
         }
      }
      anim.pending_deletes = false;
   }

   if (FUNC3(anim.pending) > 0)
   {
      FUNC1(anim.list, anim.pending.p, FUNC3(anim.pending));
      FUNC2(anim.pending);
   }

   anim.in_update      = false;
   animation_is_active = FUNC3(anim.list) > 0;

   return animation_is_active;
}
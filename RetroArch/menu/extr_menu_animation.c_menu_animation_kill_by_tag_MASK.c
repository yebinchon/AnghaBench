#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tween {uintptr_t tag; int deleted; } ;
typedef  uintptr_t menu_animation_ctx_tag ;
struct TYPE_2__ {int pending_deletes; int /*<<< orphan*/  list; scalar_t__ in_update; } ;

/* Variables and functions */
 TYPE_1__ anim ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct tween* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

bool FUNC3(menu_animation_ctx_tag *tag)
{
   unsigned i;

   if (!tag || *tag == (uintptr_t)-1)
      return false;

   for (i = 0; i < FUNC0(anim.list); ++i)
   {
      struct tween *t = FUNC2(anim.list, i);
      if (!t || t->tag != *tag)
         continue;

      if (anim.in_update)
      {
         t->deleted = true;
         anim.pending_deletes = true;
      }
      else
      {
         FUNC1(anim.list, i);
         --i;
      }
   }

   return true;
}
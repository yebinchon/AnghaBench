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
struct tween {int /*<<< orphan*/ * subject; } ;
typedef  int /*<<< orphan*/  menu_animation_t ;
typedef  enum menu_animation_ctl_state { ____Placeholder_menu_animation_ctl_state } menu_animation_ctl_state ;
struct TYPE_3__ {int /*<<< orphan*/  pending; int /*<<< orphan*/  list; } ;

/* Variables and functions */
#define  MENU_ANIMATION_CTL_CLEAR_ACTIVE 131 
#define  MENU_ANIMATION_CTL_DEINIT 130 
#define  MENU_ANIMATION_CTL_NONE 129 
#define  MENU_ANIMATION_CTL_SET_ACTIVE 128 
 TYPE_1__ anim ; 
 int animation_is_active ; 
 int /*<<< orphan*/  cur_time ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct tween* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 float delta_time ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  old_time ; 
 int ticker_is_active ; 

bool FUNC4(enum menu_animation_ctl_state state, void *data)
{
   switch (state)
   {
      case MENU_ANIMATION_CTL_DEINIT:
         {
            size_t i;

            for (i = 0; i < FUNC0(anim.list); i++)
            {
               struct tween *t = FUNC2(anim.list, i);
               if (!t)
                  continue;

               if (t->subject)
                  t->subject = NULL;
            }

            FUNC1(anim.list);
            FUNC1(anim.pending);

            FUNC3(&anim, 0, sizeof(menu_animation_t));
         }
         cur_time                  = 0;
         old_time                  = 0;
         delta_time                = 0.0f;
         break;
      case MENU_ANIMATION_CTL_CLEAR_ACTIVE:
         animation_is_active       = false;
         ticker_is_active          = false;
         break;
      case MENU_ANIMATION_CTL_SET_ACTIVE:
         animation_is_active       = true;
         ticker_is_active          = true;
         break;
      case MENU_ANIMATION_CTL_NONE:
      default:
         break;
   }

   return true;
}
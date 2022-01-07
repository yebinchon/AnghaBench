
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tween {int * subject; } ;
typedef int menu_animation_t ;
typedef enum menu_animation_ctl_state { ____Placeholder_menu_animation_ctl_state } menu_animation_ctl_state ;
struct TYPE_3__ {int pending; int list; } ;






 TYPE_1__ anim ;
 int animation_is_active ;
 int cur_time ;
 size_t da_count (int ) ;
 int da_free (int ) ;
 struct tween* da_getptr (int ,size_t) ;
 float delta_time ;
 int memset (TYPE_1__*,int ,int) ;
 int old_time ;
 int ticker_is_active ;

bool menu_animation_ctl(enum menu_animation_ctl_state state, void *data)
{
   switch (state)
   {
      case 130:
         {
            size_t i;

            for (i = 0; i < da_count(anim.list); i++)
            {
               struct tween *t = da_getptr(anim.list, i);
               if (!t)
                  continue;

               if (t->subject)
                  t->subject = ((void*)0);
            }

            da_free(anim.list);
            da_free(anim.pending);

            memset(&anim, 0, sizeof(menu_animation_t));
         }
         cur_time = 0;
         old_time = 0;
         delta_time = 0.0f;
         break;
      case 131:
         animation_is_active = 0;
         ticker_is_active = 0;
         break;
      case 128:
         animation_is_active = 1;
         ticker_is_active = 1;
         break;
      case 129:
      default:
         break;
   }

   return 1;
}

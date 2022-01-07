
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ozone_handle_t ;
struct TYPE_3__ {uintptr_t tag; float* subject; float target_value; int * cb; int * userdata; int duration; int easing_enum; } ;
typedef TYPE_1__ menu_animation_ctx_entry_t ;


 int ANIMATION_CURSOR_PULSE ;
 int EASING_OUT_QUAD ;
 int menu_animation_push (TYPE_1__*) ;
 int * ozone_cursor_animation_cb ;
 int ozone_default_theme ;

__attribute__((used)) static void ozone_animate_cursor(ozone_handle_t *ozone, float *dst, float *target)
{
   menu_animation_ctx_entry_t entry;
   int i;

   entry.easing_enum = EASING_OUT_QUAD;
   entry.tag = (uintptr_t) &ozone_default_theme;
   entry.duration = ANIMATION_CURSOR_PULSE;
   entry.userdata = ozone;

   for (i = 0; i < 16; i++)
   {
      if (i == 3 || i == 7 || i == 11 || i == 15)
         continue;

      if (i == 14)
         entry.cb = ozone_cursor_animation_cb;
      else
         entry.cb = ((void*)0);

      entry.subject = &dst[i];
      entry.target_value = target[i];

      menu_animation_push(&entry);
   }
}

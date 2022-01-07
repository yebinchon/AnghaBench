
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float target_value; int * userdata; int tag; int * subject; int easing_enum; int duration; int * cb; } ;
typedef TYPE_1__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int SCREENSHOT_DURATION_OUT ;
 int menu_animation_push (TYPE_1__*) ;
 int menu_widgets_generic_tag ;
 int screenshot_alpha ;

__attribute__((used)) static void menu_widgets_screenshot_fadeout(void *userdata)
{
   menu_animation_ctx_entry_t entry;

   entry.cb = ((void*)0);
   entry.duration = SCREENSHOT_DURATION_OUT;
   entry.easing_enum = EASING_OUT_QUAD;
   entry.subject = &screenshot_alpha;
   entry.tag = menu_widgets_generic_tag;
   entry.target_value = 0.0f;
   entry.userdata = ((void*)0);

   menu_animation_push(&entry);
}

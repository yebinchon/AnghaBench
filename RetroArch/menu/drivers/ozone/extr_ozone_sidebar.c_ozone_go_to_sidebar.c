
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct menu_animation_ctx_entry {float* subject; uintptr_t tag; float target_value; int * userdata; int easing_enum; int duration; int * cb; } ;
struct TYPE_5__ {float cursor_alpha; } ;
struct TYPE_6__ {int cursor_in_sidebar_old; int cursor_in_sidebar; TYPE_1__ animations; int selection; int selection_old; } ;
typedef TYPE_2__ ozone_handle_t ;


 int ANIMATION_CURSOR_DURATION ;
 int EASING_OUT_QUAD ;
 int menu_animation_push (struct menu_animation_ctx_entry*) ;
 int ozone_sidebar_update_collapse (TYPE_2__*,int) ;

void ozone_go_to_sidebar(ozone_handle_t *ozone, uintptr_t tag)
{
   struct menu_animation_ctx_entry entry;

   ozone->selection_old = ozone->selection;
   ozone->cursor_in_sidebar_old = ozone->cursor_in_sidebar;
   ozone->cursor_in_sidebar = 1;


   ozone->animations.cursor_alpha = 0.0f;

   entry.cb = ((void*)0);
   entry.duration = ANIMATION_CURSOR_DURATION;
   entry.easing_enum = EASING_OUT_QUAD;
   entry.subject = &ozone->animations.cursor_alpha;
   entry.tag = tag;
   entry.target_value = 1.0f;
   entry.userdata = ((void*)0);

   menu_animation_push(&entry);

   ozone_sidebar_update_collapse(ozone, 1);
}

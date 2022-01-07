
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int video_font_size; } ;
struct TYPE_7__ {TYPE_1__ floats; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {float* subject; float target_value; int * userdata; int tag; int easing_enum; int duration; int cb; } ;
typedef TYPE_3__ menu_animation_ctx_entry_t ;


 int EASING_OUT_QUAD ;
 int MAX (int ,int ) ;
 int MSG_ACHIEVEMENT_UNLOCKED ;
 int MSG_QUEUE_ANIMATION_DURATION ;
 int cheevo_height ;
 int cheevo_title ;
 float cheevo_unfold ;
 int cheevo_width ;
 float cheevo_y ;
 TYPE_2__* config_get_ptr () ;
 int font_driver_get_message_width (int ,int ,int ,int) ;
 int font_regular ;
 int menu_animation_push (TYPE_3__*) ;
 int menu_widgets_achievement_unfold ;
 int menu_widgets_generic_tag ;
 int msg_hash_to_str (int ) ;
 int simple_widget_padding ;

__attribute__((used)) static void menu_widgets_start_achievement_notification()
{
   settings_t *settings = config_get_ptr();
   menu_animation_ctx_entry_t entry;
   cheevo_height = settings->floats.video_font_size * 4;
   cheevo_width = MAX(
         font_driver_get_message_width(font_regular, msg_hash_to_str(MSG_ACHIEVEMENT_UNLOCKED), 0, 1),
         font_driver_get_message_width(font_regular, cheevo_title, 0, 1)
   );
   cheevo_width += simple_widget_padding * 2;
   cheevo_y = (float)(-(int)cheevo_height);
   cheevo_unfold = 0.0f;


   entry.cb = menu_widgets_achievement_unfold;
   entry.duration = MSG_QUEUE_ANIMATION_DURATION;
   entry.easing_enum = EASING_OUT_QUAD;
   entry.subject = &cheevo_y;
   entry.tag = menu_widgets_generic_tag;
   entry.target_value = 0.0f;
   entry.userdata = ((void*)0);

   menu_animation_push(&entry);
}

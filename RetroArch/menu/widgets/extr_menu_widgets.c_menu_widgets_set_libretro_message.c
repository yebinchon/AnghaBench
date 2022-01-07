
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int duration; int * userdata; int cb; } ;
typedef TYPE_1__ menu_timer_ctx_entry_t ;
typedef uintptr_t menu_animation_ctx_tag ;


 int DEFAULT_BACKDROP ;
 int LIBRETRO_MESSAGE_SIZE ;
 scalar_t__ font_driver_get_message_width (int ,char const*,unsigned int,int) ;
 int font_regular ;
 int libretro_message ;
 int libretro_message_alpha ;
 int libretro_message_timer ;
 scalar_t__ libretro_message_width ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int menu_timer_kill (int *) ;
 int menu_timer_start (int *,TYPE_1__*) ;
 int menu_widgets_libretro_message_fadeout ;
 int simple_widget_padding ;
 int strlcpy (int ,char const*,int ) ;
 scalar_t__ strlen (char const*) ;

void menu_widgets_set_libretro_message(const char *msg, unsigned duration)
{
   menu_animation_ctx_tag tag = (uintptr_t) &libretro_message_timer;
   menu_timer_ctx_entry_t timer;

   strlcpy(libretro_message, msg, LIBRETRO_MESSAGE_SIZE);

   libretro_message_alpha = DEFAULT_BACKDROP;


   menu_timer_kill(&libretro_message_timer);
   menu_animation_kill_by_tag(&tag);

   timer.cb = menu_widgets_libretro_message_fadeout;
   timer.duration = duration;
   timer.userdata = ((void*)0);

   menu_timer_start(&libretro_message_timer, &timer);


   libretro_message_width = font_driver_get_message_width(font_regular, msg, (unsigned)strlen(msg), 1) + simple_widget_padding * 2;
}

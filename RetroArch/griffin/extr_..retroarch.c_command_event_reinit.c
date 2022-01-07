
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ video_fullscreen; } ;
struct TYPE_8__ {TYPE_1__ bools; } ;
struct TYPE_7__ {int (* poll ) (int ) ;} ;
struct TYPE_6__ {int (* set_nonblock_state ) (int ,int) ;} ;


 int CMD_EVENT_GAME_FOCUS_TOGGLE ;
 int command_event (int ,void*) ;
 TYPE_4__* configuration_settings ;
 TYPE_3__* current_input ;
 int current_input_data ;
 TYPE_2__* current_video ;
 int menu_display_set_framebuffer_dirty_flag () ;
 scalar_t__ menu_driver_alive ;
 int stub1 (int ) ;
 int stub2 (int ,int) ;
 int video_driver_data ;
 int video_driver_hide_mouse () ;
 int video_driver_reinit (int const) ;

__attribute__((used)) static void command_event_reinit(const int flags)
{
   video_driver_reinit(flags);

   if (current_input && current_input->poll)
      current_input->poll(current_input_data);
   command_event(CMD_EVENT_GAME_FOCUS_TOGGLE, (void*)(intptr_t)-1);
}

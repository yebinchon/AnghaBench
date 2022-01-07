
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context_data; int (* cb_swap_buffers ) (int ,TYPE_1__*) ;int runloop_is_paused; int runloop_is_slowmotion; int input_driver_nonblock_state; scalar_t__ black_frame_insertion; } ;
typedef TYPE_1__ video_frame_info_t ;


 int CMD_EVENT_REINIT ;
 int GL_COLOR_BUFFER_BIT ;
 int RWebAudioRecalibrateTime () ;
 int command_event (int ,int *) ;
 int emscripten_force_exit (int ) ;
 int emscripten_frame_count ;
 scalar_t__ emscripten_fullscreen_reinit ;
 int glClear (int ) ;
 int main_exit (int *) ;
 int runloop_iterate () ;
 int stub1 (int ,TYPE_1__*) ;
 int task_queue_check () ;
 int video_driver_build_info (TYPE_1__*) ;

__attribute__((used)) static void emscripten_mainloop(void)
{
   int ret;
   video_frame_info_t video_info;

   RWebAudioRecalibrateTime();

   emscripten_frame_count++;

   video_driver_build_info(&video_info);



   if (
         video_info.black_frame_insertion
         && !video_info.input_driver_nonblock_state
         && !video_info.runloop_is_slowmotion
         && !video_info.runloop_is_paused)
   {
      if ((emscripten_frame_count & 1) == 0)
      {
         glClear(GL_COLOR_BUFFER_BIT);
         video_info.cb_swap_buffers(video_info.context_data, &video_info);
         return;
      }
   }

   if (emscripten_fullscreen_reinit != 0)
   {
      if (--emscripten_fullscreen_reinit == 0)
         command_event(CMD_EVENT_REINIT, ((void*)0));
   }

   ret = runloop_iterate();

   task_queue_check();

   if (ret != -1)
      return;

   main_exit(((void*)0));
   emscripten_force_exit(0);
}

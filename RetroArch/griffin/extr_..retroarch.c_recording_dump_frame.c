
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {int width; scalar_t__ height; scalar_t__ full_height; scalar_t__ full_width; scalar_t__ y; scalar_t__ x; } ;
struct record_video_data {unsigned int width; unsigned int height; int pitch; int is_dupe; void const* data; } ;
struct TYPE_2__ {int (* push_video ) (int ,struct record_video_data*) ;} ;


 int CMD_EVENT_RECORD_DEINIT ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_RECORDING_TERMINATED_DUE_TO_RESIZE ;
 int MSG_VIEWPORT_SIZE_CALCULATION_FAILED ;
 int RARCH_WARN (char*,int ) ;
 int command_event (int ,int *) ;
 int msg_hash_to_str (int ) ;
 int recording_data ;
 TYPE_1__* recording_driver ;
 scalar_t__ recording_gpu_height ;
 int recording_gpu_width ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 int stub1 (int ,struct record_video_data*) ;
 int video_driver_get_viewport_info (struct video_viewport*) ;
 int video_driver_gpu_record_deinit () ;
 int video_driver_read_viewport (void const*,int) ;
 void const* video_driver_record_gpu_buffer ;

__attribute__((used)) static void recording_dump_frame(const void *data, unsigned width,
      unsigned height, size_t pitch, bool is_idle)
{
   struct record_video_data ffemu_data;

   ffemu_data.data = data;
   ffemu_data.width = width;
   ffemu_data.height = height;
   ffemu_data.pitch = (int)pitch;
   ffemu_data.is_dupe = 0;

   if (video_driver_record_gpu_buffer)
   {
      struct video_viewport vp;

      vp.x = 0;
      vp.y = 0;
      vp.width = 0;
      vp.height = 0;
      vp.full_width = 0;
      vp.full_height = 0;

      video_driver_get_viewport_info(&vp);

      if (!vp.width || !vp.height)
      {
         RARCH_WARN("[recording] %s \n",
               msg_hash_to_str(MSG_VIEWPORT_SIZE_CALCULATION_FAILED));
         video_driver_gpu_record_deinit();
         recording_dump_frame(data, width, height, pitch, is_idle);
         return;
      }


      if ( vp.width != recording_gpu_width ||
            vp.height != recording_gpu_height)
      {
         RARCH_WARN("[recording] %s\n", msg_hash_to_str(MSG_RECORDING_TERMINATED_DUE_TO_RESIZE));

         runloop_msg_queue_push(
               msg_hash_to_str(MSG_RECORDING_TERMINATED_DUE_TO_RESIZE),
               1, 180, 1,
               ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
         command_event(CMD_EVENT_RECORD_DEINIT, ((void*)0));
         return;
      }




      if (!video_driver_read_viewport(video_driver_record_gpu_buffer, is_idle))
         return;

      ffemu_data.pitch = (int)(recording_gpu_width * 3);
      ffemu_data.width = (unsigned)recording_gpu_width;
      ffemu_data.height = (unsigned)recording_gpu_height;
      ffemu_data.data = video_driver_record_gpu_buffer + (ffemu_data.height - 1) * ffemu_data.pitch;

      ffemu_data.pitch = -ffemu_data.pitch;
   }
   else
      ffemu_data.is_dupe = !data;

   recording_driver->push_video(recording_data, &ffemu_data);
}

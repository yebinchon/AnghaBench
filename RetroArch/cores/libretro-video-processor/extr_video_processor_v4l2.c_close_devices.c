
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * audio_handle ;
 int snd_pcm_close (int *) ;
 int v4l2_close (int) ;
 int video_device_fd ;

__attribute__((used)) static void close_devices(void)
{
   if (video_device_fd != -1)
   {
      v4l2_close(video_device_fd);
      video_device_fd = -1;
   }
}

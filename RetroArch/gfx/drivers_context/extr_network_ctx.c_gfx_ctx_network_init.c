
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;



__attribute__((used)) static void *gfx_ctx_network_init(
      video_frame_info_t *video_info, void *video_driver)
{
   (void)video_driver;

   return (void*)"network";
}

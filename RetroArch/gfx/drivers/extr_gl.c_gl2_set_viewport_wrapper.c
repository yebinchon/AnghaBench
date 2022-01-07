
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef int gl_t ;


 int gl2_set_viewport (int *,int *,unsigned int,unsigned int,int,int) ;
 int video_driver_build_info (int *) ;

__attribute__((used)) static void gl2_set_viewport_wrapper(void *data, unsigned viewport_width,
      unsigned viewport_height, bool force_full, bool allow_rotate)
{
   video_frame_info_t video_info;
   gl_t *gl = (gl_t*)data;

   video_driver_build_info(&video_info);

   gl2_set_viewport(gl, &video_info,
         viewport_width, viewport_height, force_full, allow_rotate);
}

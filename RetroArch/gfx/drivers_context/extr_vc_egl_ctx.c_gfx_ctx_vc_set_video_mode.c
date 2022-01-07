
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_4__ {int interval; } ;
struct TYPE_3__ {TYPE_2__ egl; } ;
typedef TYPE_1__ vc_ctx_data_t ;


 int frontend_driver_install_signal_handler () ;
 int g_egl_inited ;
 int gfx_ctx_vc_set_swap_interval (TYPE_2__*,int ) ;

__attribute__((used)) static bool gfx_ctx_vc_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_swapchain_images; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_4__ {int vsync_callback_set; int dispman_display; int vsync_condition_mutex; int vsync_condition; int egl; } ;
typedef TYPE_2__ vc_ctx_data_t ;


 int * dispmanx_vsync_callback ;
 int egl_swap_buffers (int *) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int vc_dispmanx_vsync_callback (int ,int *,void*) ;

__attribute__((used)) static void gfx_ctx_vc_swap_buffers(void *data, void *data2)
{
}

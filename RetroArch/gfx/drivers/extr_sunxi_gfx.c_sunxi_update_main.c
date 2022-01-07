
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct sunxi_video {int pageflip_pending; int pending_mutex; TYPE_2__* sunxi_disp; int src_height; int src_width; TYPE_1__* nextPage; int src_pixels_per_line; int dst_pixels_per_line; int vsync_condition; } ;
struct TYPE_4__ {int xres; int bits_per_pixel; } ;
struct TYPE_3__ {int offset; int address; } ;


 int pixman_blit (int ,int ,int ,int ,int *,int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int sunxi_layer_set_rgb_input_buffer (TYPE_2__*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void sunxi_update_main(const void *frame, struct sunxi_video *_dispvars)
{
   slock_lock(_dispvars->pending_mutex);

   if (_dispvars->pageflip_pending)
      scond_wait(_dispvars->vsync_condition, _dispvars->pending_mutex);

   slock_unlock(_dispvars->pending_mutex);


   pixman_blit(
      _dispvars->src_width,
      _dispvars->src_height,
      _dispvars->nextPage->address,
      _dispvars->dst_pixels_per_line,
      (uint16_t*)frame,
      _dispvars->src_pixels_per_line
      );


   sunxi_layer_set_rgb_input_buffer(_dispvars->sunxi_disp, _dispvars->sunxi_disp->bits_per_pixel,
      _dispvars->nextPage->offset,
      _dispvars->src_width, _dispvars->src_height, _dispvars->sunxi_disp->xres);

   slock_lock(_dispvars->pending_mutex);
   _dispvars->pageflip_pending = 1;
   slock_unlock(_dispvars->pending_mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef uintptr_t uint32_t ;
struct TYPE_4__ {uintptr_t layer_id; uintptr_t fb_id; int fd_disp; } ;
typedef TYPE_1__ sunxi_disp_t ;
struct TYPE_5__ {int mode; } ;
typedef TYPE_2__ __disp_layer_info_t ;


 int DISP_CMD_LAYER_GET_PARA ;
 int DISP_CMD_LAYER_SET_PARA ;
 int ioctl (int ,int ,uintptr_t*) ;

__attribute__((used)) static int sunxi_layer_change_work_mode(sunxi_disp_t *ctx, int new_mode)
{
   __disp_layer_info_t layer_info;
   uint32_t tmp[4];

   if (ctx->layer_id < 0)
      return -1;

   tmp[0] = ctx->fb_id;
   tmp[1] = ctx->layer_id;
   tmp[2] = (uintptr_t)&layer_info;

   if (ioctl(ctx->fd_disp, DISP_CMD_LAYER_GET_PARA, tmp) < 0)
      return -1;

   layer_info.mode = new_mode;

   tmp[0] = ctx->fb_id;
   tmp[1] = ctx->layer_id;
   tmp[2] = (uintptr_t)&layer_info;
   return ioctl(ctx->fd_disp, DISP_CMD_LAYER_SET_PARA, tmp);
}

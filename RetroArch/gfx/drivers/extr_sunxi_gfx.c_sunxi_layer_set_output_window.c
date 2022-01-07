
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef uintptr_t uint32_t ;
struct TYPE_4__ {scalar_t__ layer_id; int layer_win_x; int layer_win_y; uintptr_t fb_id; int fd_disp; } ;
typedef TYPE_1__ sunxi_disp_t ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef TYPE_2__ __disp_rect_t ;


 int DISP_CMD_LAYER_SET_SCN_WINDOW ;
 int ioctl (int ,int ,uintptr_t**) ;

__attribute__((used)) static int sunxi_layer_set_output_window(sunxi_disp_t *ctx, int x, int y, int w, int h)
{
   __disp_rect_t win_rect = { x, y, w, h };
   uint32_t tmp[4];

   if (ctx->layer_id < 0 || w <= 0 || h <= 0)
      return -1;


   ctx->layer_win_x = x;
   ctx->layer_win_y = y;

   tmp[0] = ctx->fb_id;
   tmp[1] = ctx->layer_id;
   tmp[2] = (uintptr_t)&win_rect;
   return ioctl(ctx->fd_disp, DISP_CMD_LAYER_SET_SCN_WINDOW, &tmp);
}

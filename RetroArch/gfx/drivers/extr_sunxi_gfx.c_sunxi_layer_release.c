
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int layer_id; int fb_id; scalar_t__ layer_has_scaler; int fd_disp; } ;
typedef TYPE_1__ sunxi_disp_t ;


 int DISP_CMD_LAYER_RELEASE ;
 int ioctl (int ,int ,int**) ;

__attribute__((used)) static int sunxi_layer_release(sunxi_disp_t *ctx)
{
   uint32_t tmp[4];

   if (ctx->layer_id < 0)
      return -1;

   tmp[0] = ctx->fb_id;
   tmp[1] = ctx->layer_id;
   ioctl(ctx->fd_disp, DISP_CMD_LAYER_RELEASE, &tmp);

   ctx->layer_id = -1;
   ctx->layer_has_scaler = 0;
   return 0;
}

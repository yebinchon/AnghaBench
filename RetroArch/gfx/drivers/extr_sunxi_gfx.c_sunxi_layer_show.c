
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ layer_id; scalar_t__ fb_id; int fd_disp; } ;
typedef TYPE_1__ sunxi_disp_t ;


 int DISP_CMD_LAYER_OPEN ;
 int ioctl (int ,int ,scalar_t__**) ;

__attribute__((used)) static int sunxi_layer_show(sunxi_disp_t *ctx)
{
   uint32_t tmp[4];

   if (ctx->layer_id < 0)
      return -1;

   tmp[0] = ctx->fb_id;
   tmp[1] = ctx->layer_id;
   return ioctl(ctx->fd_disp, DISP_CMD_LAYER_OPEN, &tmp);
}

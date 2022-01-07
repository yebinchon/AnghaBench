
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef uintptr_t uint32_t ;
struct TYPE_9__ {uintptr_t fb_id; uintptr_t layer_id; int layer_has_scaler; void* layer_format; scalar_t__ layer_scaler_is_enabled; int fd_disp; int framebuffer_paddr; } ;
typedef TYPE_3__ sunxi_disp_t ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_8__ {int mode; int seq; void* format; TYPE_1__ size; int * addr; } ;
struct TYPE_10__ {int pipe; int alpha_en; int alpha_val; TYPE_2__ fb; } ;
typedef TYPE_4__ __disp_layer_info_t ;


 int DISP_CMD_LAYER_GET_PARA ;
 int DISP_CMD_LAYER_REQUEST ;
 int DISP_CMD_LAYER_SET_PARA ;
 void* DISP_FORMAT_ARGB8888 ;
 uintptr_t DISP_LAYER_WORK_MODE_NORMAL ;
 uintptr_t DISP_LAYER_WORK_MODE_SCALER ;
 int DISP_MOD_INTERLEAVED ;
 int DISP_SEQ_ARGB ;
 scalar_t__ ioctl (int ,int ,...) ;
 scalar_t__ sunxi_layer_change_work_mode (TYPE_3__*,uintptr_t) ;

__attribute__((used)) static int sunxi_layer_reserve(sunxi_disp_t *ctx)
{
   __disp_layer_info_t layer_info;
   uint32_t tmp[4];



   tmp[0] = ctx->fb_id;
   tmp[1] = DISP_LAYER_WORK_MODE_NORMAL;
   ctx->layer_id = ioctl(ctx->fd_disp, DISP_CMD_LAYER_REQUEST, &tmp);
   if (ctx->layer_id < 0)
      return -1;



   tmp[0] = ctx->fb_id;
   tmp[1] = ctx->layer_id;
   tmp[2] = (uintptr_t)&layer_info;
   if (ioctl(ctx->fd_disp, DISP_CMD_LAYER_GET_PARA, tmp) < 0)
      return -1;


   layer_info.pipe = 1;
   layer_info.alpha_en = 1;
   layer_info.alpha_val = 255;

   layer_info.fb.addr[0] = ctx->framebuffer_paddr;
   layer_info.fb.size.width = 1;
   layer_info.fb.size.height = 1;
   layer_info.fb.format = DISP_FORMAT_ARGB8888;
   layer_info.fb.seq = DISP_SEQ_ARGB;
   layer_info.fb.mode = DISP_MOD_INTERLEAVED;

   tmp[0] = ctx->fb_id;
   tmp[1] = ctx->layer_id;
   tmp[2] = (uintptr_t)&layer_info;
   if (ioctl(ctx->fd_disp, DISP_CMD_LAYER_SET_PARA, tmp) < 0)
      return -1;


   if (sunxi_layer_change_work_mode(ctx, DISP_LAYER_WORK_MODE_SCALER) == 0)
      ctx->layer_has_scaler = 1;


   sunxi_layer_change_work_mode(ctx, DISP_LAYER_WORK_MODE_NORMAL);
   ctx->layer_scaler_is_enabled = 0;
   ctx->layer_format = DISP_FORMAT_ARGB8888;

   return ctx->layer_id;
}

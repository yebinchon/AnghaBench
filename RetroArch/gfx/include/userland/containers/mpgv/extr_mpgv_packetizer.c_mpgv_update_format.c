
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* out; TYPE_1__* priv; } ;
typedef TYPE_5__ VC_PACKETIZER_T ;
struct TYPE_13__ {int frame_rate_den; int frame_rate_num; int aspect_ratio_den; int aspect_ratio_num; int height; int width; } ;
typedef TYPE_6__ VC_PACKETIZER_MODULE_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_11__ {TYPE_3__* type; } ;
struct TYPE_9__ {int frame_rate_den; int frame_rate_num; int par_den; int par_num; int visible_height; int height; int visible_width; int width; } ;
struct TYPE_10__ {TYPE_2__ video; } ;
struct TYPE_8__ {TYPE_6__* module; } ;


 int LOG_DEBUG (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mpgv_update_format( VC_PACKETIZER_T *p_ctx )
{
   VC_PACKETIZER_MODULE_T *module = p_ctx->priv->module;

   LOG_DEBUG(0, "mpgv format: width %i, height %i, rate %i/%i, ar %i/%i",
             module->width, module->height, module->frame_rate_num, module->frame_rate_den,
             module->aspect_ratio_num, module->aspect_ratio_den);

   p_ctx->out->type->video.width = p_ctx->out->type->video.visible_width = module->width;
   p_ctx->out->type->video.height = p_ctx->out->type->video.visible_height = module->height;
   p_ctx->out->type->video.par_num = module->aspect_ratio_num;
   p_ctx->out->type->video.par_den = module->aspect_ratio_den;
   p_ctx->out->type->video.frame_rate_num = module->frame_rate_num;
   p_ctx->out->type->video.frame_rate_den = module->frame_rate_den;
   return VC_CONTAINER_SUCCESS;
}

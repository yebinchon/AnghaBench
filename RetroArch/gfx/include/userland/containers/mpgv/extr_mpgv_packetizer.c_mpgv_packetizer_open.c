
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; int max_frame_size; TYPE_3__* in; int out; } ;
typedef TYPE_2__ VC_PACKETIZER_T ;
typedef int VC_PACKETIZER_MODULE_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_7__ {scalar_t__ codec; } ;
struct TYPE_5__ {int pf_reset; int pf_packetize; int pf_close; int * module; } ;


 int LOG_DEBUG (int ,char*) ;
 int MAX_FRAME_SIZE ;
 scalar_t__ VC_CONTAINER_CODEC_MP1V ;
 scalar_t__ VC_CONTAINER_CODEC_MP2V ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 int * malloc (int) ;
 int memset (int *,int ,int) ;
 int mpgv_packetizer_close ;
 int mpgv_packetizer_packetize ;
 int mpgv_packetizer_reset ;
 int vc_container_format_copy (int ,TYPE_3__*,int ) ;

VC_CONTAINER_STATUS_T mpgv_packetizer_open( VC_PACKETIZER_T *p_ctx )
{
   VC_PACKETIZER_MODULE_T *module;

   if(p_ctx->in->codec != VC_CONTAINER_CODEC_MP1V &&
      p_ctx->in->codec != VC_CONTAINER_CODEC_MP2V)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   p_ctx->priv->module = module = malloc(sizeof(*module));
   if(!module)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   memset(module, 0, sizeof(*module));

   vc_container_format_copy( p_ctx->out, p_ctx->in, 0);
   p_ctx->max_frame_size = MAX_FRAME_SIZE;
   p_ctx->priv->pf_close = mpgv_packetizer_close;
   p_ctx->priv->pf_packetize = mpgv_packetizer_packetize;
   p_ctx->priv->pf_reset = mpgv_packetizer_reset;
   LOG_DEBUG(0, "using mpeg video packetizer");
   return VC_CONTAINER_SUCCESS;
}

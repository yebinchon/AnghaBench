
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; int max_frame_size; TYPE_4__* in; int out; } ;
typedef TYPE_2__ VC_PACKETIZER_T ;
struct TYPE_10__ {int pf_read_header; } ;
typedef TYPE_3__ VC_PACKETIZER_MODULE_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_11__ {scalar_t__ codec; } ;
struct TYPE_8__ {int pf_reset; int pf_packetize; int pf_close; TYPE_3__* module; } ;


 int LOG_DEBUG (int ,char*) ;
 int MAX_FRAME_SIZE ;
 scalar_t__ VC_CONTAINER_CODEC_MP4A ;
 scalar_t__ VC_CONTAINER_CODEC_MPGA ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 int adts_read_header ;
 TYPE_3__* malloc (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int mpga_packetizer_close ;
 int mpga_packetizer_packetize ;
 int mpga_packetizer_reset ;
 int mpga_read_header ;
 int vc_container_format_copy (int ,TYPE_4__*,int ) ;

VC_CONTAINER_STATUS_T mpga_packetizer_open( VC_PACKETIZER_T *p_ctx )
{
   VC_PACKETIZER_MODULE_T *module;

   if(p_ctx->in->codec != VC_CONTAINER_CODEC_MPGA &&
      p_ctx->in->codec != VC_CONTAINER_CODEC_MP4A)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   p_ctx->priv->module = module = malloc(sizeof(*module));
   if(!module)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   memset(module, 0, sizeof(*module));

   if(p_ctx->in->codec == VC_CONTAINER_CODEC_MPGA)
      module->pf_read_header = mpga_read_header;
   else
      module->pf_read_header = adts_read_header;

   vc_container_format_copy( p_ctx->out, p_ctx->in, 0);
   p_ctx->max_frame_size = MAX_FRAME_SIZE;
   p_ctx->priv->pf_close = mpga_packetizer_close;
   p_ctx->priv->pf_packetize = mpga_packetizer_packetize;
   p_ctx->priv->pf_reset = mpga_packetizer_reset;
   LOG_DEBUG(0, "using mpeg audio packetizer");
   return VC_CONTAINER_SUCCESS;
}

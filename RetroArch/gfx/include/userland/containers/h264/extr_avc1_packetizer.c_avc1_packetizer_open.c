
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; int max_frame_size; TYPE_3__* out; TYPE_4__* in; } ;
typedef TYPE_2__ VC_PACKETIZER_T ;
typedef int VC_PACKETIZER_MODULE_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {scalar_t__ codec; scalar_t__ codec_variant; int flags; } ;
struct TYPE_9__ {scalar_t__ codec; scalar_t__ codec_variant; } ;
struct TYPE_7__ {int pf_reset; int pf_packetize; int pf_close; int * module; } ;


 int LOG_DEBUG (int ,char*) ;
 int MAX_FRAME_SIZE ;
 scalar_t__ VC_CONTAINER_CODEC_H264 ;
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_ES_FORMAT_FLAG_FRAMED ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ VC_CONTAINER_VARIANT_H264_AVC1 ;
 scalar_t__ VC_CONTAINER_VARIANT_H264_DEFAULT ;
 int avc1_packetizer_close ;
 scalar_t__ avc1_packetizer_codecconfig (TYPE_2__*) ;
 int avc1_packetizer_packetize ;
 int avc1_packetizer_reset ;
 int free (int *) ;
 int * malloc (int) ;
 int memset (int *,int ,int) ;
 int vc_container_format_copy (TYPE_3__*,TYPE_4__*,int ) ;

VC_CONTAINER_STATUS_T avc1_packetizer_open( VC_PACKETIZER_T *p_ctx )
{
   VC_PACKETIZER_MODULE_T *module;
   VC_CONTAINER_STATUS_T status;

   if(p_ctx->in->codec != VC_CONTAINER_CODEC_H264 &&
      p_ctx->out->codec != VC_CONTAINER_CODEC_H264)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if(p_ctx->in->codec_variant != VC_CONTAINER_VARIANT_H264_AVC1 &&
      p_ctx->out->codec_variant != VC_CONTAINER_VARIANT_H264_DEFAULT)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
   if(!(p_ctx->in->flags & VC_CONTAINER_ES_FORMAT_FLAG_FRAMED))
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   p_ctx->priv->module = module = malloc(sizeof(*module));
   if(!module)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
   memset(module, 0, sizeof(*module));

   vc_container_format_copy(p_ctx->out, p_ctx->in, 0);
   status = avc1_packetizer_codecconfig(p_ctx);
   if (status != VC_CONTAINER_SUCCESS)
   {
      free(module);
      return status;
   }

   p_ctx->out->codec_variant = VC_CONTAINER_VARIANT_H264_DEFAULT;
   p_ctx->max_frame_size = MAX_FRAME_SIZE;
   p_ctx->priv->pf_close = avc1_packetizer_close;
   p_ctx->priv->pf_packetize = avc1_packetizer_packetize;
   p_ctx->priv->pf_reset = avc1_packetizer_reset;
   LOG_DEBUG(0, "using avc1 video packetizer");
   return VC_CONTAINER_SUCCESS;
}

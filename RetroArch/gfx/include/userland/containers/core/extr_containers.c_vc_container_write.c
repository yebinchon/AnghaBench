
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_17__ {scalar_t__ tracks_num; scalar_t__ size; TYPE_3__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_18__ {scalar_t__ track; scalar_t__ size; scalar_t__ frame_size; int flags; int dts; int pts; int num; scalar_t__ buffer_size; void* data; } ;
typedef TYPE_5__ VC_CONTAINER_PACKET_T ;
struct TYPE_16__ {scalar_t__ status; scalar_t__ max_size; scalar_t__ (* pf_write ) (TYPE_4__*,TYPE_5__*) ;scalar_t__ drm_filter; TYPE_2__* io; TYPE_1__* tmp_io; } ;
struct TYPE_15__ {scalar_t__ max_size; } ;
struct TYPE_14__ {int offset; } ;


 int VC_CONTAINER_CONTROL_GET_DRM_METADATA ;
 scalar_t__ VC_CONTAINER_ERROR_INVALID_ARGUMENT ;
 scalar_t__ VC_CONTAINER_ERROR_LIMIT_REACHED ;
 scalar_t__ VC_CONTAINER_ERROR_NOT_READY ;
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_SPACE ;
 scalar_t__ VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ;
 int VC_CONTAINER_PACKET_FLAG_FRAME_END ;
 int VC_CONTAINER_PACKET_FLAG_FRAME_START ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int VC_CONTAINER_TIME_UNKNOWN ;
 scalar_t__ WRITER_SPACE_SAFETY_MARGIN ;
 scalar_t__ stub1 (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ stub2 (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ vc_container_control (TYPE_4__*,int ,void**,scalar_t__*) ;
 scalar_t__ vc_container_filter_process (scalar_t__,TYPE_5__*) ;

VC_CONTAINER_STATUS_T vc_container_write( VC_CONTAINER_T *p_ctx, VC_CONTAINER_PACKET_T *p_packet )
{
   VC_CONTAINER_STATUS_T status;
   void * p_metadata_buffer = ((void*)0);
   uint32_t metadata_length = 0;


   if (!p_packet || !p_packet->data || p_packet->track >= p_ctx->tracks_num)
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;


   if(p_ctx->priv->status != VC_CONTAINER_SUCCESS && p_ctx->priv->status != VC_CONTAINER_ERROR_NOT_READY)
      return p_ctx->priv->status;


   if(p_ctx->priv->max_size &&
      p_ctx->size + p_packet->size + WRITER_SPACE_SAFETY_MARGIN > p_ctx->priv->max_size)
   {status = VC_CONTAINER_ERROR_LIMIT_REACHED; goto end;}
   if(p_ctx->priv->io->max_size &&
      p_ctx->size + p_packet->size + WRITER_SPACE_SAFETY_MARGIN +
         (p_ctx->priv->tmp_io ? p_ctx->priv->tmp_io->offset : 0) > p_ctx->priv->io->max_size)
   {status = VC_CONTAINER_ERROR_OUT_OF_SPACE; goto end;}


   if(p_ctx->priv->drm_filter)
   {
      status = vc_container_filter_process(p_ctx->priv->drm_filter, p_packet);

      if(status == VC_CONTAINER_SUCCESS)
      {

         if(vc_container_control(p_ctx, VC_CONTAINER_CONTROL_GET_DRM_METADATA,
             &p_metadata_buffer, &metadata_length) == VC_CONTAINER_SUCCESS && metadata_length > 0)
         {

            VC_CONTAINER_PACKET_T metadata_packet;
            metadata_packet.data = p_metadata_buffer;
            metadata_packet.buffer_size = metadata_length;
            metadata_packet.size = metadata_length;
            metadata_packet.frame_size = p_packet->frame_size + metadata_length;
            metadata_packet.pts = p_packet->pts;
            metadata_packet.dts = p_packet->dts;
            metadata_packet.num = p_packet->num;
            metadata_packet.track = p_packet->track;


            metadata_packet.flags = p_packet->flags & ~VC_CONTAINER_PACKET_FLAG_FRAME_END;

            p_packet->pts = p_packet->dts = VC_CONTAINER_TIME_UNKNOWN;
            p_packet->flags &= ~VC_CONTAINER_PACKET_FLAG_FRAME_START;
            if(p_ctx->priv->pf_write(p_ctx, &metadata_packet) != VC_CONTAINER_SUCCESS) goto end;
         }
      }
      else if (status != VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION)
      {


         goto end;
      }
   }

   status = p_ctx->priv->pf_write(p_ctx, p_packet);

 end:
   p_ctx->priv->status = status;
   return status;
}

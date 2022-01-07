
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int VC_PACKETIZER_T ;
typedef int VC_PACKETIZER_FLAGS_T ;
struct TYPE_16__ {size_t tracks_num; scalar_t__ position; TYPE_3__* priv; TYPE_2__** tracks; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_17__ {size_t track; scalar_t__ dts; scalar_t__ pts; scalar_t__ size; int buffer_size; int data; } ;
typedef TYPE_5__ VC_CONTAINER_PACKET_T ;
struct TYPE_15__ {int packetizer_buffer; TYPE_5__ packetizer_packet; int packetizing; } ;
struct TYPE_14__ {TYPE_1__* priv; int is_enabled; } ;
struct TYPE_13__ {int * packetizer; } ;


 int PACKETIZER_BUFFER_SIZE ;
 scalar_t__ VC_CONTAINER_ERROR_CONTINUE ;
 scalar_t__ VC_CONTAINER_ERROR_INVALID_ARGUMENT ;
 int VC_CONTAINER_READ_FLAG_FORCE_TRACK ;
 int VC_CONTAINER_READ_FLAG_INFO ;
 int VC_CONTAINER_READ_FLAG_SKIP ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 int VC_PACKETIZER_FLAG_FORCE_RELEASE_INPUT ;
 int VC_PACKETIZER_FLAG_INFO ;
 int VC_PACKETIZER_FLAG_SKIP ;
 scalar_t__ container_read_packet (TYPE_4__*,TYPE_5__*,int) ;
 int vc_packetizer_pop (int *,TYPE_5__**,int ) ;
 int vc_packetizer_push (int *,TYPE_5__*) ;
 scalar_t__ vc_packetizer_read (int *,TYPE_5__*,int) ;

VC_CONTAINER_STATUS_T vc_container_read( VC_CONTAINER_T *p_ctx, VC_CONTAINER_PACKET_T *p_packet, uint32_t flags )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_CONTINUE;
   VC_PACKETIZER_FLAGS_T packetizer_flags = 0;
   VC_PACKETIZER_T *packetizer;
   uint32_t force = flags & VC_CONTAINER_READ_FLAG_FORCE_TRACK;
   unsigned int i;

   if(!p_packet && !(flags & VC_CONTAINER_READ_FLAG_SKIP))
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;
   if(!p_packet && (flags & VC_CONTAINER_READ_FLAG_INFO))
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;
   if(p_packet && !p_packet->data && !(flags & (VC_CONTAINER_READ_FLAG_INFO | VC_CONTAINER_READ_FLAG_SKIP)))
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;
   if((flags & VC_CONTAINER_READ_FLAG_FORCE_TRACK) &&
      (!p_packet || p_packet->track >= p_ctx->tracks_num || !p_ctx->tracks[p_packet->track]->is_enabled))
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;


   if(!p_packet)
      p_packet = &p_ctx->priv->packetizer_packet;


   if(!p_ctx->priv->packetizing)
   {
      status = container_read_packet( p_ctx, p_packet, flags );
      goto end;
   }

   if(flags & VC_CONTAINER_READ_FLAG_INFO)
      packetizer_flags |= VC_PACKETIZER_FLAG_INFO;
   if(flags & VC_CONTAINER_READ_FLAG_SKIP)
      packetizer_flags |= VC_PACKETIZER_FLAG_SKIP;



   for(i = 0; i < p_ctx->tracks_num; i++)
   {
      VC_PACKETIZER_T *packetizer = p_ctx->tracks[i]->priv->packetizer;
      if(!p_ctx->tracks[i]->is_enabled || !packetizer ||
         (force && i != p_packet->track))
         continue;

      status = vc_packetizer_read(packetizer, p_packet, packetizer_flags);
      p_packet->track = i;
      if(status == VC_CONTAINER_SUCCESS)
         break;
   }
   if(i < p_ctx->tracks_num)
      goto end;


   while(1)
   {
      VC_CONTAINER_PACKET_T *tmp = &p_ctx->priv->packetizer_packet;
      tmp->track = p_packet->track;


      status = container_read_packet( p_ctx, tmp, force|VC_PACKETIZER_FLAG_INFO );
      if(status != VC_CONTAINER_SUCCESS)
         return status;

      if(!p_ctx->tracks[tmp->track]->priv->packetizer)
      {
         status = container_read_packet( p_ctx, p_packet, flags );
         break;
      }


      packetizer = p_ctx->tracks[tmp->track]->priv->packetizer;

      tmp->data = p_ctx->priv->packetizer_buffer;
      tmp->buffer_size = PACKETIZER_BUFFER_SIZE;
      tmp->size = 0;
      status = container_read_packet( p_ctx, tmp, force );
      if(status != VC_CONTAINER_SUCCESS)
         return status;

      p_packet->track = tmp->track;
      vc_packetizer_push(packetizer, tmp);
      vc_packetizer_pop(packetizer, &tmp, VC_PACKETIZER_FLAG_FORCE_RELEASE_INPUT);

      status = vc_packetizer_read(packetizer, p_packet, packetizer_flags);
      if(status == VC_CONTAINER_SUCCESS)
         break;
   }

 end:
   if(status != VC_CONTAINER_SUCCESS)
      return status;

   if(p_packet && p_packet->dts > p_ctx->position)
      p_ctx->position = p_packet->dts;
   if(p_packet && p_packet->pts > p_ctx->position)
      p_ctx->position = p_packet->pts;

   return VC_CONTAINER_SUCCESS;
}

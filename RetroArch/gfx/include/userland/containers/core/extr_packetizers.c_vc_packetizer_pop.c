
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_PACKETIZER_T ;
typedef int VC_PACKETIZER_FLAGS_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {scalar_t__ size; int * data; struct TYPE_13__* next; struct TYPE_13__* framework_data; } ;
typedef TYPE_3__ VC_CONTAINER_PACKET_T ;
struct TYPE_14__ {TYPE_3__* current; TYPE_3__** last; TYPE_3__* first; } ;
typedef TYPE_4__ VC_CONTAINER_BYTESTREAM_T ;
struct TYPE_11__ {TYPE_4__ stream; } ;


 int VC_CONTAINER_ERROR_INCOMPLETE_DATA ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 int VC_PACKETIZER_FLAG_FORCE_RELEASE_INPUT ;
 TYPE_3__* bytestream_pop (TYPE_4__*) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;

VC_CONTAINER_STATUS_T vc_packetizer_pop( VC_PACKETIZER_T *p_ctx,
   VC_CONTAINER_PACKET_T **in, VC_PACKETIZER_FLAGS_T flags)
{
   VC_CONTAINER_BYTESTREAM_T *stream = &p_ctx->priv->stream;
   VC_CONTAINER_PACKET_T *packet, *new, **prev;


   while((*in = bytestream_pop(stream)) != ((void*)0))
   {
      if(*in && (*in)->framework_data)
      {
         free(*in);
         continue;
      }

      if(*in)
         return VC_CONTAINER_SUCCESS;
   }

   if(!(flags & VC_PACKETIZER_FLAG_FORCE_RELEASE_INPUT))
      return VC_CONTAINER_ERROR_INCOMPLETE_DATA;


   for (packet = stream->first, prev = &stream->first;
        packet && packet->framework_data; prev = &packet->next, packet = packet->next);

   if (!packet || (packet && packet->framework_data))
      return VC_CONTAINER_ERROR_INCOMPLETE_DATA;




   new = malloc(sizeof(*packet) + packet->size);
   if(!new)
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   *new = *packet;
   new->framework_data = new;
   if(!new->next)
      stream->last = &new->next;
   if(stream->current == packet)
      stream->current = new;
   *prev = new;
   new->data = (uint8_t *)&new[1];
   memcpy(new->data, packet->data, packet->size);
   *in = packet;

   return VC_CONTAINER_SUCCESS;
}

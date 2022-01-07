
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_PACKETIZER_T ;
typedef int VC_PACKETIZER_FLAGS_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {int data; } ;
typedef TYPE_3__ VC_CONTAINER_PACKET_T ;
struct TYPE_8__ {int (* pf_packetize ) (TYPE_2__*,TYPE_3__*,int) ;TYPE_3__ packet; } ;


 int VC_CONTAINER_ERROR_INVALID_ARGUMENT ;
 int VC_CONTAINER_READ_FLAG_INFO ;
 int VC_CONTAINER_READ_FLAG_SKIP ;
 int stub1 (TYPE_2__*,TYPE_3__*,int) ;

VC_CONTAINER_STATUS_T vc_packetizer_read( VC_PACKETIZER_T *p_ctx,
   VC_CONTAINER_PACKET_T *packet, VC_PACKETIZER_FLAGS_T flags)
{
   if(!packet && !(flags & VC_CONTAINER_READ_FLAG_SKIP))
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;
   if(!packet && (flags & VC_CONTAINER_READ_FLAG_INFO))
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;
   if(packet && !packet->data &&
      (!(flags & VC_CONTAINER_READ_FLAG_INFO) &&
       !(flags & VC_CONTAINER_READ_FLAG_SKIP)))
      return VC_CONTAINER_ERROR_INVALID_ARGUMENT;


   if(!packet)
      packet = &p_ctx->priv->packet;

   return p_ctx->priv->pf_packetize(p_ctx, packet, flags);
}

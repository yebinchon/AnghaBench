
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_PACKETIZER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_9__ {scalar_t__ framework_data; } ;
typedef TYPE_3__ VC_CONTAINER_PACKET_T ;
struct TYPE_7__ {int stream; } ;


 int VC_CONTAINER_SUCCESS ;
 int bytestream_push (int *,TYPE_3__*) ;

VC_CONTAINER_STATUS_T vc_packetizer_push( VC_PACKETIZER_T *p_ctx,
   VC_CONTAINER_PACKET_T *in)
{


   in->framework_data = 0;
   bytestream_push(&p_ctx->priv->stream, in);
   return VC_CONTAINER_SUCCESS;
}

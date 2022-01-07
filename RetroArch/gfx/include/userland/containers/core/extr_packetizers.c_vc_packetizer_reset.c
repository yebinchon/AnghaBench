
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
struct TYPE_9__ {scalar_t__ offset; scalar_t__ current_offset; scalar_t__ bytes; } ;
typedef TYPE_3__ VC_CONTAINER_BYTESTREAM_T ;
struct TYPE_7__ {int (* pf_reset ) (TYPE_2__*) ;TYPE_3__ stream; } ;


 int VC_CONTAINER_SUCCESS ;
 int bytestream_skip (TYPE_3__*,scalar_t__) ;
 int stub1 (TYPE_2__*) ;

VC_CONTAINER_STATUS_T vc_packetizer_reset( VC_PACKETIZER_T *p_ctx )
{
   VC_CONTAINER_BYTESTREAM_T *stream = &p_ctx->priv->stream;

   bytestream_skip( stream, stream->bytes - stream->current_offset - stream->offset );

   if (p_ctx->priv->pf_reset)
      return p_ctx->priv->pf_reset(p_ctx);
   else
      return VC_CONTAINER_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_3__ {int size; int data; } ;
typedef TYPE_1__ VC_CONTAINER_PACKET_T ;


 int STREAM_STATUS (int *) ;
 int WRITE_BYTES (int *,int ,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T binary_writer_write( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_PACKET_T *packet )
{
   WRITE_BYTES(p_ctx, packet->data, packet->size);
   return STREAM_STATUS(p_ctx);
}

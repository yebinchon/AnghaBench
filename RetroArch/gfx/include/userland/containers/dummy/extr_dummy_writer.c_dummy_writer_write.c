
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_PACKET_T ;


 int VC_CONTAINER_PARAM_UNUSED (int *) ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T dummy_writer_write( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_PACKET_T *packet )
{
   VC_CONTAINER_PARAM_UNUSED(p_ctx);
   VC_CONTAINER_PARAM_UNUSED(packet);
   return VC_CONTAINER_SUCCESS;
}

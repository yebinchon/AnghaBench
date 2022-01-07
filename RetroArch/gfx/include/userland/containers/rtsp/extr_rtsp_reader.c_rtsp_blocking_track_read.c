
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_PACKET_T ;


 int VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS ;
 scalar_t__ VC_CONTAINER_ERROR_ABORTED ;
 int VC_CONTAINER_READ_TIMEOUT_BLOCK ;
 int vc_container_control (int *,int ,int ) ;
 scalar_t__ vc_container_read (int *,int *,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_blocking_track_read(VC_CONTAINER_T *p_ctx,
                                               VC_CONTAINER_PACKET_T *p_packet,
                                               uint32_t flags)
{
   VC_CONTAINER_STATUS_T status;

   status = vc_container_read(p_ctx, p_packet, flags);


   if (status == VC_CONTAINER_ERROR_ABORTED)
   {

      (void)vc_container_control(p_ctx, VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS, VC_CONTAINER_READ_TIMEOUT_BLOCK);
      status = vc_container_read(p_ctx, p_packet, flags);
      (void)vc_container_control(p_ctx, VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS, 0);
   }

   return status;
}

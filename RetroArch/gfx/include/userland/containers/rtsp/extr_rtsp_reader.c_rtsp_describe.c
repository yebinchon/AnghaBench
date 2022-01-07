
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;


 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ rtsp_create_tracks_from_response (int *) ;
 scalar_t__ rtsp_read_response (int *) ;
 scalar_t__ rtsp_send_describe_request (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T rtsp_describe( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;


   status = rtsp_send_describe_request(p_ctx);
   if (status != VC_CONTAINER_SUCCESS) return status;
   status = rtsp_read_response(p_ctx);
   if (status != VC_CONTAINER_SUCCESS) return status;


   status = rtsp_create_tracks_from_response(p_ctx);

   return status;
}

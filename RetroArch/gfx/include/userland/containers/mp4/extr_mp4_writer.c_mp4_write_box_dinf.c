
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef scalar_t__ VC_CONTAINER_STATUS_T ;


 int MP4_BOX_TYPE_DREF ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ mp4_write_box (int *,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_dinf( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;

   status = mp4_write_box(p_ctx, MP4_BOX_TYPE_DREF);
   if(status != VC_CONTAINER_SUCCESS) return status;

   return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int ASF_OBJECT_TYPE_DATA ;
 int ASF_OBJECT_TYPE_HEADER ;
 int asf_write_object (int *,int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_write_header( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status;



   status = asf_write_object(p_ctx, ASF_OBJECT_TYPE_HEADER);
   status = asf_write_object(p_ctx, ASF_OBJECT_TYPE_DATA);

   return status;
}

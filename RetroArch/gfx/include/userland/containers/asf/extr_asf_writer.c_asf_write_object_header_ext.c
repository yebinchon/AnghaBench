
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int ASF_OBJECT_TYPE_HEADER_EXT_INTERNAL ;
 int WRITE_GUID (int *,int *,char*) ;
 int WRITE_U16 (int *,int ,char*) ;
 int asf_write_object (int *,int ) ;
 int guid_null ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_write_object_header_ext( VC_CONTAINER_T *p_ctx )
{
   WRITE_GUID(p_ctx, &guid_null, "Reserved Field 1");
   WRITE_U16(p_ctx, 0, "Reserved Field 2");

   return asf_write_object(p_ctx, ASF_OBJECT_TYPE_HEADER_EXT_INTERNAL);
}

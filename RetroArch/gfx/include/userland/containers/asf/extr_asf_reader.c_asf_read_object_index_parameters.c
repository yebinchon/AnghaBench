
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 scalar_t__ ASF_READ_U16 (int *,int,char*) ;
 int ASF_SKIP_U16 (int *,int,char*) ;
 int ASF_SKIP_U32 (int *,int,char*) ;
 int CHECK_POINT (int *,int) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_ERROR_CORRUPTED ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_read_object_index_parameters( VC_CONTAINER_T *p_ctx, int64_t size )
{
   CHECK_POINT(p_ctx, size);

   return STREAM_STATUS(p_ctx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ int64_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 scalar_t__ ASF_READ_U16 (int *,scalar_t__,char*) ;
 int ASF_SKIP_STRING (int *,scalar_t__,scalar_t__,char*) ;
 int CHECK_POINT (int *,scalar_t__) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_ERROR_CORRUPTED ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_read_object_content_description( VC_CONTAINER_T *p_ctx, int64_t size )
{
   uint16_t t_length, a_length, c_length, d_length, r_length;

   t_length = ASF_READ_U16(p_ctx, size, "Title Length");
   a_length = ASF_READ_U16(p_ctx, size, "Author Length");
   c_length = ASF_READ_U16(p_ctx, size, "Copyright Length");
   d_length = ASF_READ_U16(p_ctx, size, "Description Length");
   r_length = ASF_READ_U16(p_ctx, size, "Rating Length");

   CHECK_POINT(p_ctx, size);

   if(size < t_length) return VC_CONTAINER_ERROR_CORRUPTED;
   ASF_SKIP_STRING(p_ctx, size, t_length, "Title");
   if(size < a_length) return VC_CONTAINER_ERROR_CORRUPTED;
   ASF_SKIP_STRING(p_ctx, size, a_length, "Author");
   if(size < c_length) return VC_CONTAINER_ERROR_CORRUPTED;
   ASF_SKIP_STRING(p_ctx, size, c_length, "Copyright");
   if(size < d_length) return VC_CONTAINER_ERROR_CORRUPTED;
   ASF_SKIP_STRING(p_ctx, size, d_length, "Description");
   if(size < r_length) return VC_CONTAINER_ERROR_CORRUPTED;
   ASF_SKIP_STRING(p_ctx, size, r_length, "Rating");

   return STREAM_STATUS(p_ctx);
}

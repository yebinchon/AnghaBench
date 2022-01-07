
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;


 int ASF_READ_U32 (int *,int ,char*) ;
 int ASF_SKIP_BYTES (int *,int ,int ) ;
 int STREAM_STATUS (int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T asf_read_object_content_encryption( VC_CONTAINER_T *p_ctx, int64_t size )
{
   uint32_t length;

   length = ASF_READ_U32(p_ctx, size, "Secret Data Length");
   ASF_SKIP_BYTES(p_ctx, size, length);

   length = ASF_READ_U32(p_ctx, size, "Protection Type Length");
   ASF_SKIP_BYTES(p_ctx, size, length);

   length = ASF_READ_U32(p_ctx, size, "Key ID Length");
   ASF_SKIP_BYTES(p_ctx, size, length);

   length = ASF_READ_U32(p_ctx, size, "License URL Length");
   ASF_SKIP_BYTES(p_ctx, size, length);

   return STREAM_STATUS(p_ctx);
}

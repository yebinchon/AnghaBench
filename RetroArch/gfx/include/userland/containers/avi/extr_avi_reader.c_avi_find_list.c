
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef scalar_t__ VC_CONTAINER_FOURCC_T ;


 int AVI_SKIP_CHUNK (int *,scalar_t__) ;
 int PEEK_BYTES (int *,int *,int) ;
 scalar_t__ READ_FOURCC (int *,char*) ;
 scalar_t__ READ_U32 (int *,char*) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_SUCCESS ;
 scalar_t__ VC_FOURCC (char,char,char,char) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T avi_find_list(VC_CONTAINER_T *p_ctx, VC_CONTAINER_FOURCC_T fourcc, uint32_t *size)
{
   VC_CONTAINER_STATUS_T status;
   VC_CONTAINER_FOURCC_T chunk_id;
   uint32_t chunk_size;
   uint32_t peek_buf[1];

   do {
      chunk_id = READ_FOURCC(p_ctx, "Chunk ID");
      chunk_size = READ_U32(p_ctx, "Chunk size");
      if((status = STREAM_STATUS(p_ctx)) != VC_CONTAINER_SUCCESS) return status;

      if(chunk_id == VC_FOURCC('L','I','S','T'))
      {
         if (PEEK_BYTES(p_ctx, (uint8_t*)peek_buf, 4) != 4)
            return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;
         if (peek_buf[0] == fourcc)
         {
            *size = chunk_size;
            return VC_CONTAINER_SUCCESS;
         }
      }

      AVI_SKIP_CHUNK(p_ctx, chunk_size);
   } while((status = STREAM_STATUS(p_ctx)) == VC_CONTAINER_SUCCESS);

   return status;
}

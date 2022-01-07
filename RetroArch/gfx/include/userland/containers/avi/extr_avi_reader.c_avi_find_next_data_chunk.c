
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
 int AVI_TWOCC (char,char) ;
 int PEEK_BYTES (int *,int *,int) ;
 scalar_t__ READ_FOURCC (int *,char*) ;
 scalar_t__ READ_U32 (int *,char*) ;
 int SKIP_FOURCC (int *,char*) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_ERROR_EOS ;
 int VC_CONTAINER_SUCCESS ;
 scalar_t__ VC_FOURCC (char,char,char,char) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T avi_find_next_data_chunk(VC_CONTAINER_T *p_ctx, uint32_t *id, uint32_t *size)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_FOURCC_T chunk_id;
   uint32_t chunk_size = 0;
   uint32_t peek_buf[1];

   do
   {
      chunk_id = READ_FOURCC(p_ctx, "Chunk ID");
      chunk_size = READ_U32(p_ctx, "Chunk size");
      if((status = STREAM_STATUS(p_ctx)) != VC_CONTAINER_SUCCESS)
         break;


      if(chunk_id == VC_FOURCC('L','I','S','T'))
      {
         if (PEEK_BYTES(p_ctx, (uint8_t*)peek_buf, 4) != 4)
            return VC_CONTAINER_ERROR_EOS;
         if (peek_buf[0] == VC_FOURCC('r','e','c',' '))
            SKIP_FOURCC(p_ctx, "rec ");
         else if (peek_buf[0] == VC_FOURCC('m','o','v','i'))
            SKIP_FOURCC(p_ctx, "movi");
         else
            AVI_SKIP_CHUNK(p_ctx, chunk_size);
         continue;
      }


      if(chunk_id == VC_FOURCC('R','I','F','F'))
      {
         if (PEEK_BYTES(p_ctx, (uint8_t*)peek_buf, 4) != 4)
            return VC_CONTAINER_ERROR_EOS;
         if (peek_buf[0] == VC_FOURCC('A','V','I','X'))
            SKIP_FOURCC(p_ctx, "AVIX");
         else
            AVI_SKIP_CHUNK(p_ctx, chunk_size);
         continue;
      }


      if((uint32_t)chunk_id >> 16 == AVI_TWOCC('d','c') ||
         (uint32_t)chunk_id >> 16 == AVI_TWOCC('d','b') ||
         (uint32_t)chunk_id >> 16 == AVI_TWOCC('d','d') ||
         (uint32_t)chunk_id >> 16 == AVI_TWOCC('w','b'))
      {
         *id = chunk_id;
         *size = chunk_size;
         break;
      }


      if(chunk_size == 0 && chunk_id == 0) return VC_CONTAINER_ERROR_EOS;


      AVI_SKIP_CHUNK(p_ctx, chunk_size);
   } while ((status = STREAM_STATUS(p_ctx)) == VC_CONTAINER_SUCCESS);

   return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
typedef scalar_t__ VC_CONTAINER_FOURCC_T ;


 int AVI_SKIP_CHUNK (int *,int ) ;
 scalar_t__ READ_FOURCC (int *,char*) ;
 int READ_U32 (int *,char*) ;
 int STREAM_STATUS (int *) ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T avi_find_chunk(VC_CONTAINER_T *p_ctx, VC_CONTAINER_FOURCC_T id, uint32_t *size)
{
   VC_CONTAINER_STATUS_T status;
   VC_CONTAINER_FOURCC_T chunk_id;
   uint32_t chunk_size;

   do {
      chunk_id = READ_FOURCC(p_ctx, "Chunk ID");
      chunk_size = READ_U32(p_ctx, "Chunk size");
      if((status = STREAM_STATUS(p_ctx)) != VC_CONTAINER_SUCCESS) return status;

      if(chunk_id == id)
      {
         *size = chunk_size;
         return VC_CONTAINER_SUCCESS;
      }

      AVI_SKIP_CHUNK(p_ctx, chunk_size);
   } while((status = STREAM_STATUS(p_ctx)) == VC_CONTAINER_SUCCESS);

   return status;
}

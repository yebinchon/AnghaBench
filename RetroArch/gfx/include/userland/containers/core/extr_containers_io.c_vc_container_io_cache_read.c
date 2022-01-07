
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ offset; int status; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_10__ {size_t size; size_t position; size_t mem_size; size_t buffer; scalar_t__ offset; } ;
typedef TYPE_2__ VC_CONTAINER_IO_PRIVATE_CACHE_T ;


 int VC_CONTAINER_SUCCESS ;
 int memcpy (int *,size_t,size_t) ;
 int vc_container_assert (int) ;
 size_t vc_container_io_cache_refill (TYPE_1__*,TYPE_2__*) ;
 size_t vc_container_io_cache_refill_bypass (TYPE_1__*,TYPE_2__*,int *,size_t) ;

__attribute__((used)) static size_t vc_container_io_cache_read( VC_CONTAINER_IO_T *p_ctx,
   VC_CONTAINER_IO_PRIVATE_CACHE_T *cache, uint8_t *data, size_t size )
{
   size_t read = 0, bytes, ret;

   while(size)
   {
      bytes = cache->size - cache->position;



      if(!bytes && size > cache->mem_size)
      {
         bytes = cache->mem_size;
         ret = vc_container_io_cache_refill_bypass( p_ctx, cache, data + read, bytes);
         read += ret;

         if(ret != bytes)
            goto end;

         size -= bytes;
         continue;
      }



      if(!bytes) bytes = vc_container_io_cache_refill( p_ctx, cache );
      if(!bytes) goto end;


      p_ctx->status = VC_CONTAINER_SUCCESS;


      if(bytes > size) bytes = size;
      memcpy(data + read, cache->buffer + cache->position, bytes);
      cache->position += bytes;
      read += bytes;
      size -= bytes;
   }

 end:
   vc_container_assert(cache->offset + cache->position == p_ctx->offset + read);
   return read;
}

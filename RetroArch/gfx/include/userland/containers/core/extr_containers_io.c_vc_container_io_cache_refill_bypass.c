
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {TYPE_1__* priv; } ;
typedef TYPE_3__ VC_CONTAINER_IO_T ;
struct TYPE_14__ {scalar_t__ offset; TYPE_9__* io; scalar_t__ position; scalar_t__ size; } ;
typedef TYPE_4__ VC_CONTAINER_IO_PRIVATE_CACHE_T ;
struct TYPE_15__ {scalar_t__ (* pf_seek ) (TYPE_9__*,scalar_t__) ;size_t (* pf_read ) (TYPE_9__*,int *,size_t) ;TYPE_2__* priv; } ;
struct TYPE_12__ {scalar_t__ actual_offset; } ;
struct TYPE_11__ {scalar_t__ actual_offset; } ;


 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ stub1 (TYPE_9__*,scalar_t__) ;
 size_t stub2 (TYPE_9__*,int *,size_t) ;
 size_t vc_container_io_cache_flush (TYPE_3__*,TYPE_4__*,int) ;

__attribute__((used)) static size_t vc_container_io_cache_refill_bypass( VC_CONTAINER_IO_T *p_ctx,
   VC_CONTAINER_IO_PRIVATE_CACHE_T *cache, uint8_t *buffer, size_t size )
{
   size_t ret = vc_container_io_cache_flush( p_ctx, cache, 1 );

   if(ret) return 0;

   if(p_ctx->priv->actual_offset != cache->offset)
   {
      if(cache->io->pf_seek(cache->io, cache->offset) != VC_CONTAINER_SUCCESS)
         return 0;
   }

   ret = cache->io->pf_read(cache->io, buffer, size);
   cache->size = cache->position = 0;
   cache->offset += ret;
   cache->io->priv->actual_offset = cache->offset;
   return ret;
}

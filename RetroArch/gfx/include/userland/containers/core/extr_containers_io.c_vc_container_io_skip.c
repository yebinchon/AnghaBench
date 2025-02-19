
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {scalar_t__ offset; TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_7__ {scalar_t__ cache; } ;


 scalar_t__ vc_container_io_cache_seek (TYPE_2__*,scalar_t__,scalar_t__) ;
 size_t vc_container_io_read (TYPE_2__*,int *,size_t) ;
 scalar_t__ vc_container_io_seek (TYPE_2__*,scalar_t__) ;

size_t vc_container_io_skip(VC_CONTAINER_IO_T *p_ctx, size_t size)
{
   if(!size) return 0;

   if(size < 8)
   {
      uint8_t value[8];
      return vc_container_io_read(p_ctx, value, size);
   }

   if(p_ctx->priv->cache)
   {
      if(vc_container_io_cache_seek(p_ctx, p_ctx->priv->cache, p_ctx->offset + size)) return 0;
      p_ctx->offset += size;
      return size;
   }

   if(vc_container_io_seek(p_ctx, p_ctx->offset + size)) return 0;
   return size;
}

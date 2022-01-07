
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {size_t (* pf_read ) (TYPE_2__*,void*,size_t) ;size_t offset; TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_6__ {size_t actual_offset; scalar_t__ cache; } ;


 size_t stub1 (TYPE_2__*,void*,size_t) ;
 size_t vc_container_io_cache_read (TYPE_2__*,scalar_t__,int *,size_t) ;

size_t vc_container_io_read(VC_CONTAINER_IO_T *p_ctx, void *buffer, size_t size)
{
   size_t ret;

   if(p_ctx->priv->cache)
      ret = vc_container_io_cache_read( p_ctx, p_ctx->priv->cache, (uint8_t*)buffer, size );
   else
   {
      ret = p_ctx->pf_read(p_ctx, buffer, size);
      p_ctx->priv->actual_offset += ret;
   }

   p_ctx->offset += ret;
   return ret;
}

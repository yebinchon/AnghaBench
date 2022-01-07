
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ (* pf_write ) (TYPE_2__*,void const*,size_t) ;int offset; TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_6__ {int actual_offset; scalar_t__ cache; } ;


 scalar_t__ stub1 (TYPE_2__*,void const*,size_t) ;
 scalar_t__ vc_container_io_cache_write (TYPE_2__*,scalar_t__,int const*,size_t) ;

size_t vc_container_io_write(VC_CONTAINER_IO_T *p_ctx, const void *buffer, size_t size)
{
   int32_t ret;

   if(p_ctx->priv->cache)
      ret = vc_container_io_cache_write( p_ctx, p_ctx->priv->cache, (const uint8_t*)buffer, size );
   else
   {
      ret = p_ctx->pf_write(p_ctx, buffer, size);
      p_ctx->priv->actual_offset += ret;
   }

   p_ctx->offset += ret;
   return ret < 0 ? 0 : ret;
}

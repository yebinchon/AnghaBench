
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long lo; void const* buffer; scalar_t__ hi; } ;
typedef unsigned long MD5_u32plus ;
typedef TYPE_1__ MD5_CTX ;


 void* MD5_body (TYPE_1__*,void const*,unsigned long) ;
 int memcpy (void const*,void const*,unsigned long) ;

void MD5_Update(MD5_CTX *ctx, const void *data, unsigned long size)
{
 MD5_u32plus saved_lo;
 unsigned long used, available;

 saved_lo = ctx->lo;
 if ((ctx->lo = (saved_lo + size) & 0x1fffffff) < saved_lo)
  ctx->hi++;
 ctx->hi += size >> 29;

 used = saved_lo & 0x3f;

 if (used)
   {
      available = 64 - used;

      if (size < available)
      {
         memcpy(&ctx->buffer[used], data, size);
         return;
      }

      memcpy(&ctx->buffer[used], data, available);
      data = (const unsigned char *)data + available;
      size -= available;
      MD5_body(ctx, ctx->buffer, 64);
   }

 if (size >= 64)
   {
      data = MD5_body(ctx, data, size & ~(unsigned long)0x3f);
      size &= 0x3f;
   }

 memcpy(ctx->buffer, data, size);
}

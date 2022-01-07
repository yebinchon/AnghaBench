
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int count; unsigned char const* buffer; int state; } ;
typedef TYPE_1__ MD4_CTX ;


 int MD4Transform (int ,unsigned char const*) ;
 int MD4_BLOCK_LENGTH ;
 int os_memcpy (unsigned char const*,unsigned char const*,size_t) ;

__attribute__((used)) static void MD4Update(MD4_CTX *ctx, const unsigned char *input, size_t len)
{
 size_t have, need;

 have = (size_t)((ctx->count >> 3) & (MD4_BLOCK_LENGTH - 1));
 need = MD4_BLOCK_LENGTH - have;

 ctx->count += (u64)len << 3;

 if (len >= need) {
  if (have != 0) {
   os_memcpy(ctx->buffer + have, input, need);
   MD4Transform(ctx->state, ctx->buffer);
   input += need;
   len -= need;
   have = 0;
  }

  while (len >= MD4_BLOCK_LENGTH) {
   MD4Transform(ctx->state, input);
   input += MD4_BLOCK_LENGTH;
   len -= MD4_BLOCK_LENGTH;
  }
 }

 if (len != 0)
  os_memcpy(ctx->buffer + have, input, len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int count; } ;
typedef TYPE_1__ MD4_CTX ;


 int MD4Update (TYPE_1__*,int *,int) ;
 int MD4_BLOCK_LENGTH ;
 int * PADDING ;
 int PUT_64BIT_LE (int *,int) ;

__attribute__((used)) static void MD4Pad(MD4_CTX *ctx)
{
 u8 count[8];
 size_t padlen;

 PUT_64BIT_LE(count, ctx->count);

 padlen = MD4_BLOCK_LENGTH -
  ((ctx->count >> 3) & (MD4_BLOCK_LENGTH - 1));
 if (padlen < 1 + 8)
  padlen += MD4_BLOCK_LENGTH;
 MD4Update(ctx, PADDING, padlen - 8);
 MD4Update(ctx, count, 8);
}

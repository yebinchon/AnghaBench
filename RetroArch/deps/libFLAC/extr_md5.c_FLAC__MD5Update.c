
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* bytes; int * in; int buf; } ;
typedef unsigned int FLAC__uint32 ;
typedef int FLAC__byte ;
typedef TYPE_1__ FLAC__MD5Context ;


 int FLAC__MD5Transform (int ,int *) ;
 int byteSwapX16 (int *) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static void FLAC__MD5Update(FLAC__MD5Context *ctx, FLAC__byte const *buf, unsigned len)
{
 FLAC__uint32 t;



 t = ctx->bytes[0];
 if ((ctx->bytes[0] = t + len) < t)
  ctx->bytes[1]++;

 t = 64 - (t & 0x3f);
 if (t > len) {
  memcpy((FLAC__byte *)ctx->in + 64 - t, buf, len);
  return;
 }

 memcpy((FLAC__byte *)ctx->in + 64 - t, buf, t);
 byteSwapX16(ctx->in);
 FLAC__MD5Transform(ctx->buf, ctx->in);
 buf += t;
 len -= t;


 while (len >= 64) {
  memcpy(ctx->in, buf, 64);
  byteSwapX16(ctx->in);
  FLAC__MD5Transform(ctx->buf, ctx->in);
  buf += 64;
  len -= 64;
 }


 memcpy(ctx->in, buf, len);
}

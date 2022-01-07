
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct MD5Context {int* bits; unsigned char* in; int buf; } ;


 int MD5Transform (int ,int*) ;
 int byteReverse (unsigned char*,int) ;
 int os_memcpy (unsigned char*,unsigned char const*,unsigned int) ;

void
MD5Update(struct MD5Context *ctx, unsigned char const *buf, unsigned len)
{
    u32 t;



    t = ctx->bits[0];
    if ((ctx->bits[0] = t + ((u32) len << 3)) < t)
 ctx->bits[1]++;
    ctx->bits[1] += len >> 29;

    t = (t >> 3) & 0x3f;



    if (t) {
 unsigned char *p = (unsigned char *) ctx->in + t;

 t = 64 - t;
 if (len < t) {
     os_memcpy(p, buf, len);
     return;
 }
 os_memcpy(p, buf, t);
 byteReverse(ctx->in, 16);
 MD5Transform(ctx->buf, (u32 *) ctx->in);
 buf += t;
 len -= t;
    }


    while (len >= 64) {
 os_memcpy(ctx->in, buf, 64);
 byteReverse(ctx->in, 16);
 MD5Transform(ctx->buf, (u32 *) ctx->in);
 buf += 64;
 len -= 64;
    }



    os_memcpy(ctx->in, buf, len);
}

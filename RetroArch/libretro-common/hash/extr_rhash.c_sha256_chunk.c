
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ u8; } ;
struct sha256_ctx {int inlen; TYPE_1__ in; int len; } ;


 int memcpy (scalar_t__,int const*,unsigned int) ;
 int sha256_block (struct sha256_ctx*) ;

__attribute__((used)) static void sha256_chunk(struct sha256_ctx *p,
      const uint8_t *s, unsigned len)
{
   p->len += len;

   while (len)
   {
      unsigned l = 64 - p->inlen;

      if (len < l)
         l = len;

      memcpy(p->in.u8 + p->inlen, s, l);

      s += l;
      p->inlen += l;
      len -= l;

      if (p->inlen == 64)
         sha256_block(p);
   }
}

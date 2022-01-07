
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sha256_ctx {int * h; } ;


 int store32be (int ,int ) ;

__attribute__((used)) static void sha256_subhash(struct sha256_ctx *p, uint32_t *t)
{
   unsigned i;
   for (i = 0; i < 8; i++)
      store32be(t++, p->h[i]);
}

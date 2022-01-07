
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cckprng_ctx_t ;
struct TYPE_2__ {int (* addentropy ) (int ,size_t,void const*) ;} ;


 int CCKPRNG_ABORT ;
 int panic (char*) ;
 TYPE_1__* prng_fns ;
 int stub1 (int ,size_t,void const*) ;

__attribute__((used)) static int
prng_addentropy(cckprng_ctx_t ctx, size_t nbytes, const void * entropy)
{
 int err = prng_fns->addentropy(ctx, nbytes, entropy);
 if (err == CCKPRNG_ABORT) {
  panic("prng_addentropy");
 }
 return err;
}

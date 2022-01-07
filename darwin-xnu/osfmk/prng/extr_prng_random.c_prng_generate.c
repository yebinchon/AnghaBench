
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cckprng_ctx_t ;
struct TYPE_2__ {int (* generate ) (int ,size_t,void*) ;} ;


 int CCKPRNG_ABORT ;
 int panic (char*) ;
 TYPE_1__* prng_fns ;
 int stub1 (int ,size_t,void*) ;

__attribute__((used)) static int
prng_generate(cckprng_ctx_t ctx, size_t nbytes, void * out)
{
 int err = prng_fns->generate(ctx, nbytes, out);
 if (err == CCKPRNG_ABORT) {
  panic("prng_generate");
 }
 return err;
}

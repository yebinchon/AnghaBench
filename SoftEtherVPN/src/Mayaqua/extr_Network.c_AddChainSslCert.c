
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ssl_ctx_st {int dummy; } ;
struct TYPE_6__ {int do_not_free; int x509; } ;
typedef TYPE_1__ X ;


 TYPE_1__* CloneX (TYPE_1__*) ;
 int FreeX (TYPE_1__*) ;
 int SSL_CTX_add_extra_chain_cert (struct ssl_ctx_st*,int ) ;

bool AddChainSslCert(struct ssl_ctx_st *ctx, X *x)
{
 bool ret = 0;
 X *x_copy;

 if (ctx == ((void*)0) || x == ((void*)0))
 {
  return ret;
 }

 x_copy = CloneX(x);

 if (x_copy != ((void*)0))
 {
  SSL_CTX_add_extra_chain_cert(ctx, x_copy->x509);
  x_copy->do_not_free = 1;

  ret = 1;

  FreeX(x_copy);
 }

 return ret;
}

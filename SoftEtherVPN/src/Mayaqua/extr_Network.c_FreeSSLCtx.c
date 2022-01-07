
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_ctx_st {int dummy; } ;


 int SSL_CTX_free (struct ssl_ctx_st*) ;

void FreeSSLCtx(struct ssl_ctx_st *ctx)
{

 if (ctx == ((void*)0))
 {
  return;
 }

 SSL_CTX_free(ctx);
}

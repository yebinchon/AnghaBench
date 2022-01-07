
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_ctx_st {int dummy; } ;


 struct ssl_ctx_st* SSL_CTX_new (int ) ;
 int SSL_CTX_set_ecdh_auto (struct ssl_ctx_st*,int) ;
 int SSL_CTX_set_options (struct ssl_ctx_st*,int ) ;
 int SSL_CTX_set_tmp_dh_callback (struct ssl_ctx_st*,int ) ;
 int SSL_OP_CIPHER_SERVER_PREFERENCE ;
 int SSL_OP_NO_TICKET ;
 int SSLv23_method () ;
 int TmpDhCallback ;

struct ssl_ctx_st *NewSSLCtx(bool server_mode)
{
 struct ssl_ctx_st *ctx = SSL_CTX_new(SSLv23_method());
 SSL_CTX_set_tmp_dh_callback(ctx, TmpDhCallback);





 return ctx;
}

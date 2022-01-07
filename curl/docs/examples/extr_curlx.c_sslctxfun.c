
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int errorbio; int ca; int pkey; int usercert; } ;
typedef TYPE_1__ sslctxparm ;
typedef int SSL_CTX ;
typedef int CURLcode ;
typedef int CURL ;


 int BIO_printf (int ,char*) ;
 int CURLE_OK ;
 int CURLE_SSL_CERTPROBLEM ;
 int ERR_print_errors (int ) ;
 int SSL_CTX_check_private_key (int *) ;
 int SSL_CTX_get_cert_store (int *) ;
 int SSL_CTX_set_cert_verify_callback (int *,int ,void*) ;
 int SSL_CTX_set_cipher_list (int *,char*) ;
 int SSL_CTX_set_mode (int *,int ) ;
 int SSL_CTX_set_quiet_shutdown (int *,int) ;
 int SSL_CTX_set_verify (int *,int ,int ) ;
 int SSL_CTX_set_verify_depth (int *,int) ;
 int SSL_CTX_use_PrivateKey (int *,int ) ;
 int SSL_CTX_use_certificate (int *,int ) ;
 int SSL_MODE_AUTO_RETRY ;
 int SSL_VERIFY_PEER ;
 int X509_STORE_add_cert (int ,int ) ;
 int ZERO_NULL ;
 scalar_t__ sk_X509_num (int ) ;
 int sk_X509_value (int ,scalar_t__) ;
 int ssl_app_verify_callback ;

__attribute__((used)) static CURLcode sslctxfun(CURL *curl, void *sslctx, void *parm)
{
  sslctxparm *p = (sslctxparm *) parm;
  SSL_CTX *ctx = (SSL_CTX *) sslctx;

  if(!SSL_CTX_use_certificate(ctx, p->usercert)) {
    BIO_printf(p->errorbio, "SSL_CTX_use_certificate problem\n");
    goto err;
  }
  if(!SSL_CTX_use_PrivateKey(ctx, p->pkey)) {
    BIO_printf(p->errorbio, "SSL_CTX_use_PrivateKey\n");
    goto err;
  }

  if(!SSL_CTX_check_private_key(ctx)) {
    BIO_printf(p->errorbio, "SSL_CTX_check_private_key\n");
    goto err;
  }

  SSL_CTX_set_quiet_shutdown(ctx, 1);
  SSL_CTX_set_cipher_list(ctx, "RC4-MD5");
  SSL_CTX_set_mode(ctx, SSL_MODE_AUTO_RETRY);

  X509_STORE_add_cert(SSL_CTX_get_cert_store(ctx),
                      sk_X509_value(p->ca, sk_X509_num(p->ca)-1));

  SSL_CTX_set_verify_depth(ctx, 2);
  SSL_CTX_set_verify(ctx, SSL_VERIFY_PEER, ZERO_NULL);
  SSL_CTX_set_cert_verify_callback(ctx, ssl_app_verify_callback, parm);

  return CURLE_OK;
  err:
  ERR_print_errors(p->errorbio);
  return CURLE_SSL_CERTPROBLEM;

}

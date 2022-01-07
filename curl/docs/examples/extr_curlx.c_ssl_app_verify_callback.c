
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int verbose; int errorbio; int curl; int accesstype; } ;
typedef TYPE_1__ sslctxparm ;
struct TYPE_6__ {scalar_t__ cert; } ;
typedef TYPE_2__ X509_STORE_CTX ;


 int BIO_printf (int ,char*,...) ;
 int CURLOPT_URL ;
 int NID_info_access ;
 int NID_sinfo_access ;
 int X509_print_ex (int ,scalar_t__,int ,int ) ;
 int X509_verify_cert (TYPE_2__*) ;
 int curl_easy_setopt (int ,int ,unsigned char*) ;
 unsigned char* my_get_ext (scalar_t__,int ,int ) ;

__attribute__((used)) static int ssl_app_verify_callback(X509_STORE_CTX *ctx, void *arg)
{
  sslctxparm * p = (sslctxparm *) arg;
  int ok;

  if(p->verbose > 2)
    BIO_printf(p->errorbio, "entering ssl_app_verify_callback\n");

  ok = X509_verify_cert(ctx);
  if(ok && ctx->cert) {
    unsigned char *accessinfo;
    if(p->verbose > 1)
      X509_print_ex(p->errorbio, ctx->cert, 0, 0);

    accessinfo = my_get_ext(ctx->cert, p->accesstype, NID_sinfo_access);
    if(accessinfo) {
      if(p->verbose)
        BIO_printf(p->errorbio, "Setting URL from SIA to: %s\n", accessinfo);

      curl_easy_setopt(p->curl, CURLOPT_URL, accessinfo);
    }
    else if(accessinfo = my_get_ext(ctx->cert, p->accesstype,
                                    NID_info_access)) {
      if(p->verbose)
        BIO_printf(p->errorbio, "Setting URL from AIA to: %s\n", accessinfo);

      curl_easy_setopt(p->curl, CURLOPT_URL, accessinfo);
    }
  }
  if(p->verbose > 2)
    BIO_printf(p->errorbio, "leaving ssl_app_verify_callback with %d\n", ok);

  return ok;
}

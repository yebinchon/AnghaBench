
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {int version; int * cert; int * client_CA; TYPE_1__ const* method; } ;
struct TYPE_5__ {int version; } ;
typedef TYPE_1__ SSL_METHOD ;
typedef TYPE_2__ SSL_CTX ;
typedef int CERT ;


 int SSL_DEBUG (int ,char*) ;
 int SSL_LIB_ERROR_LEVEL ;
 int X509_free (int *) ;
 int * X509_new () ;
 int ssl_cert_free (int *) ;
 int * ssl_cert_new () ;
 scalar_t__ ssl_mem_zalloc (int) ;

SSL_CTX* SSL_CTX_new(const SSL_METHOD *method)
{
    SSL_CTX *ctx;
    CERT *cert;
    X509 *client_ca;

    if (!method) {
        SSL_DEBUG(SSL_LIB_ERROR_LEVEL, "no no_method");
        return ((void*)0);
    }

    client_ca = X509_new();
    if (!client_ca) {
        SSL_DEBUG(SSL_LIB_ERROR_LEVEL, "X509_new() return NULL");
        goto failed1;
    }

    cert = ssl_cert_new();
    if (!cert) {
        SSL_DEBUG(SSL_LIB_ERROR_LEVEL, "ssl_cert_new() return NULL");
        goto failed2;
    }

    ctx = (SSL_CTX *)ssl_mem_zalloc(sizeof(SSL_CTX));
    if (!ctx) {
        SSL_DEBUG(SSL_LIB_ERROR_LEVEL, "no enough memory > (ctx)");
        goto failed3;
    }

    ctx->method = method;
    ctx->client_CA = client_ca;
    ctx->cert = cert;

    ctx->version = method->version;

    return ctx;

failed3:
    ssl_cert_free(cert);
failed2:
    X509_free(client_ca);
failed1:
    return ((void*)0);
}

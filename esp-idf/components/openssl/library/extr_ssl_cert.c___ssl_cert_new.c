
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {int * pkey; int * x509; } ;
typedef int EVP_PKEY ;
typedef TYPE_1__ CERT ;


 int EVP_PKEY_free (int *) ;
 int SSL_CERT_ERROR_LEVEL ;
 int SSL_DEBUG (int ,char*) ;
 int * __EVP_PKEY_new (int *) ;
 int * __X509_new (int *) ;
 int ssl_mem_free (TYPE_1__*) ;
 TYPE_1__* ssl_mem_zalloc (int) ;

CERT *__ssl_cert_new(CERT *ic)
{
    CERT *cert;

    X509 *ix;
    EVP_PKEY *ipk;

    cert = ssl_mem_zalloc(sizeof(CERT));
    if (!cert) {
        SSL_DEBUG(SSL_CERT_ERROR_LEVEL, "no enough memory > (cert)");
        goto no_mem;
    }

    if (ic) {
        ipk = ic->pkey;
        ix = ic->x509;
    } else {
        ipk = ((void*)0);
        ix = ((void*)0);
    }

    cert->pkey = __EVP_PKEY_new(ipk);
    if (!cert->pkey) {
        SSL_DEBUG(SSL_CERT_ERROR_LEVEL, "__EVP_PKEY_new() return NULL");
        goto pkey_err;
    }

    cert->x509 = __X509_new(ix);
    if (!cert->x509) {
        SSL_DEBUG(SSL_CERT_ERROR_LEVEL, "__X509_new() return NULL");
        goto x509_err;
    }

    return cert;

x509_err:
    EVP_PKEY_free(cert->pkey);
pkey_err:
    ssl_mem_free(cert);
no_mem:
    return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pkey; int x509; } ;
typedef TYPE_1__ CERT ;


 int EVP_PKEY_free (int ) ;
 int SSL_ASSERT3 (TYPE_1__*) ;
 int X509_free (int ) ;
 int ssl_mem_free (TYPE_1__*) ;

void ssl_cert_free(CERT *cert)
{
    SSL_ASSERT3(cert);

    X509_free(cert->x509);

    EVP_PKEY_free(cert->pkey);

    ssl_mem_free(cert);
}

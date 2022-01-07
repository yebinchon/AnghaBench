
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* cert; } ;
typedef TYPE_2__ X509 ;
struct TYPE_8__ {TYPE_2__* x509; } ;
typedef TYPE_2__ SSL ;


 int SSL_ASSERT1 (TYPE_2__*) ;
 int X509_free (TYPE_2__*) ;

int SSL_use_certificate(SSL *ssl, X509 *x)
{
    SSL_ASSERT1(ssl);
    SSL_ASSERT1(x);

    if (ssl->cert->x509 == x)
        return 1;

    X509_free(ssl->cert->x509);

    ssl->cert->x509 = x;

    return 1;
}

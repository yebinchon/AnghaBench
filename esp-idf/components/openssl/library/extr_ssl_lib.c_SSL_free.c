
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int session; int cert; int client_CA; } ;
typedef TYPE_1__ SSL ;


 int SSL_ASSERT3 (TYPE_1__*) ;
 int SSL_METHOD_CALL (int ,TYPE_1__*) ;
 int SSL_SESSION_free (int ) ;
 int X509_free (int ) ;
 int free ;
 int ssl_cert_free (int ) ;
 int ssl_mem_free (TYPE_1__*) ;

void SSL_free(SSL *ssl)
{
    SSL_ASSERT3(ssl);

    SSL_METHOD_CALL(free, ssl);

    X509_free(ssl->client_CA);

    ssl_cert_free(ssl->cert);

    SSL_SESSION_free(ssl->session);

    ssl_mem_free(ssl);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {TYPE_1__* session; } ;
struct TYPE_5__ {int * peer; } ;
typedef TYPE_2__ SSL ;


 int SSL_ASSERT2 (TYPE_2__ const*) ;

X509 *SSL_get_peer_certificate(const SSL *ssl)
{
    SSL_ASSERT2(ssl);

    return ssl->session->peer;
}

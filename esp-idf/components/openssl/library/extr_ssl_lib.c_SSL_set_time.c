
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* session; } ;
struct TYPE_5__ {long time; } ;
typedef TYPE_2__ SSL ;


 int SSL_ASSERT1 (TYPE_2__*) ;

long SSL_set_time(SSL *ssl, long t)
{
    SSL_ASSERT1(ssl);

    ssl->session->time = t;

    return t;
}

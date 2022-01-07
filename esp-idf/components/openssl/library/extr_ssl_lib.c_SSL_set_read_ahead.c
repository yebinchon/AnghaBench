
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int read_ahead; } ;
struct TYPE_6__ {TYPE_1__ rlayer; } ;
typedef TYPE_2__ SSL ;


 int SSL_ASSERT3 (TYPE_2__*) ;

void SSL_set_read_ahead(SSL *ssl, int yes)
{
    SSL_ASSERT3(ssl);

    ssl->rlayer.read_ahead = yes;
}

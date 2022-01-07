
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int depth; } ;
struct TYPE_6__ {TYPE_1__ param; } ;
typedef TYPE_2__ SSL ;


 int SSL_ASSERT3 (TYPE_2__*) ;

void SSL_set_verify_depth(SSL *ssl, int depth)
{
    SSL_ASSERT3(ssl);

    ssl->param.depth = depth;
}

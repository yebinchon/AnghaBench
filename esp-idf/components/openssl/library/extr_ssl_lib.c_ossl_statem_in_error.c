
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_6__ {TYPE_1__ statem; } ;
typedef TYPE_2__ SSL ;


 scalar_t__ MSG_FLOW_ERROR ;
 int SSL_ASSERT1 (TYPE_2__ const*) ;

int ossl_statem_in_error(const SSL *ssl)
{
    SSL_ASSERT1(ssl);

    if (ssl->statem.state == MSG_FLOW_ERROR)
        return 1;

    return 0;
}

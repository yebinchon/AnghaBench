
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rwstate; } ;
typedef TYPE_1__ SSL ;


 int SSL_ASSERT1 (TYPE_1__ const*) ;

int SSL_want(const SSL *ssl)
{
    SSL_ASSERT1(ssl);

    return ssl->rwstate;
}

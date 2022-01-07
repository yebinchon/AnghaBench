
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT1 (int const*) ;
 scalar_t__ SSL_pending (int const*) ;

int SSL_has_pending(const SSL *ssl)
{
    int ret;

    SSL_ASSERT1(ssl);

    if (SSL_pending(ssl))
        ret = 1;
    else
        ret = 0;

    return ret;
}

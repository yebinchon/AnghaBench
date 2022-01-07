
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT1 (int const*) ;
 scalar_t__ SSL_NOTHING ;
 scalar_t__ SSL_want (int const*) ;

int SSL_want_nothing(const SSL *ssl)
{
    SSL_ASSERT1(ssl);

    return (SSL_want(ssl) == SSL_NOTHING);
}

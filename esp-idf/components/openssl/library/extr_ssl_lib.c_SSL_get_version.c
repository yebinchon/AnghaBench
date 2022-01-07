
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT2 (int const*) ;
 int SSL_version (int const*) ;
 char const* ssl_protocol_to_string (int ) ;

const char *SSL_get_version(const SSL *ssl)
{
    SSL_ASSERT2(ssl);

    return ssl_protocol_to_string(SSL_version(ssl));
}

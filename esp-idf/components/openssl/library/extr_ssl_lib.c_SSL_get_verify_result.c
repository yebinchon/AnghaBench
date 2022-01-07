
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT1 (int const*) ;
 long SSL_METHOD_CALL (int ,int const*) ;
 int get_verify_result ;

long SSL_get_verify_result(const SSL *ssl)
{
    SSL_ASSERT1(ssl);

    return SSL_METHOD_CALL(get_verify_result, ssl);
}

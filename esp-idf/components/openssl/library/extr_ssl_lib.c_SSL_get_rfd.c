
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT1 (int const*) ;
 int SSL_METHOD_CALL (int ,int const*,int ) ;
 int get_fd ;

int SSL_get_rfd(const SSL *ssl)
{
    int ret;

    SSL_ASSERT1(ssl);

    ret = SSL_METHOD_CALL(get_fd, ssl, 0);

    return ret;
}

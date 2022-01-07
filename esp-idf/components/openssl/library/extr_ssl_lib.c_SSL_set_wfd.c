
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT1 (int) ;
 int SSL_METHOD_CALL (int ,int *,int,int ) ;
 int set_fd ;

int SSL_set_wfd(SSL *ssl, int fd)
{
    SSL_ASSERT1(ssl);
    SSL_ASSERT1(fd >= 0);

    SSL_METHOD_CALL(set_fd, ssl, fd, 0);

    return 1;
}

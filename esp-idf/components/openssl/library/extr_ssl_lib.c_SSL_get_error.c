
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int shutdown; } ;
typedef TYPE_1__ SSL ;


 int SSL_ASSERT1 (TYPE_1__ const*) ;
 int SSL_ERROR_NONE ;
 int SSL_ERROR_SYSCALL ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_ERROR_ZERO_RETURN ;
 int SSL_RECEIVED_SHUTDOWN ;
 scalar_t__ SSL_want_read (TYPE_1__ const*) ;
 scalar_t__ SSL_want_write (TYPE_1__ const*) ;

int SSL_get_error(const SSL *ssl, int ret_code)
{
    int ret = SSL_ERROR_SYSCALL;

    SSL_ASSERT1(ssl);

    if (ret_code > 0)
        ret = SSL_ERROR_NONE;
    else if (ret_code < 0)
    {
        if (SSL_want_read(ssl))
            ret = SSL_ERROR_WANT_READ;
        else if (SSL_want_write(ssl))
            ret = SSL_ERROR_WANT_WRITE;
        else
            ret = SSL_ERROR_SYSCALL;
    }
    else
    {
        if (ssl->shutdown & SSL_RECEIVED_SHUTDOWN)
            ret = SSL_ERROR_ZERO_RETURN;
        else
            ret = SSL_ERROR_SYSCALL;
    }

    return ret;
}

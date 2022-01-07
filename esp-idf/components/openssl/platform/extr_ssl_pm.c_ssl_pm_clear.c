
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int ssl_pm_shutdown (int *) ;

int ssl_pm_clear(SSL *ssl)
{
    return ssl_pm_shutdown(ssl);
}

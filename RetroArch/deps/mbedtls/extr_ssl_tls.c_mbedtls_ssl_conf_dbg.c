
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* f_dbg ) (void*,int,char const*,int,char const*) ;void* p_dbg; } ;
typedef TYPE_1__ mbedtls_ssl_config ;



void mbedtls_ssl_conf_dbg( mbedtls_ssl_config *conf,
                  void (*f_dbg)(void *, int, const char *, int, const char *),
                  void *p_dbg )
{
    conf->f_dbg = f_dbg;
    conf->p_dbg = p_dbg;
}

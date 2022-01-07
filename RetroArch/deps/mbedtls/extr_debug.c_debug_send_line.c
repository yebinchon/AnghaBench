
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
typedef int idstr ;
struct TYPE_4__ {int p_dbg; int (* f_dbg ) (int ,int,char const*,int,char const*) ;} ;


 int DEBUG_BUF_SIZE ;
 int mbedtls_snprintf (char*,int,char*,void*,char const*) ;
 int stub1 (int ,int,char const*,int,char*) ;
 int stub2 (int ,int,char const*,int,char const*) ;

__attribute__((used)) static void debug_send_line( const mbedtls_ssl_context *ssl, int level,
                                    const char *file, int line,
                                    const char *str )
{
    ssl->conf->f_dbg( ssl->conf->p_dbg, level, file, line, str );

}

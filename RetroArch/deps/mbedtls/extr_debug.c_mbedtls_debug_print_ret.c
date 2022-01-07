
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int str ;
struct TYPE_6__ {TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_5__ {int * f_dbg; } ;


 int DEBUG_BUF_SIZE ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 int debug_send_line (TYPE_2__ const*,int,char const*,int,char*) ;
 int debug_threshold ;
 int mbedtls_snprintf (char*,int,char*,char const*,int,int) ;

void mbedtls_debug_print_ret( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, int ret )
{
    char str[DEBUG_BUF_SIZE];

    if( ssl->conf == ((void*)0) || ssl->conf->f_dbg == ((void*)0) || level > debug_threshold )
        return;






    if( ret == MBEDTLS_ERR_SSL_WANT_READ )
        return;

    mbedtls_snprintf( str, sizeof( str ), "%s() returned %d (-0x%04x)\n",
              text, ret, -ret );

    debug_send_line( ssl, level, file, line, str );
}

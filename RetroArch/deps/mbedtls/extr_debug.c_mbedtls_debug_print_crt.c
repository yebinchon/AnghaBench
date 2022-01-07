
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int str ;
struct TYPE_11__ {struct TYPE_11__* next; int pk; } ;
typedef TYPE_2__ mbedtls_x509_crt ;
struct TYPE_12__ {TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
typedef int buf ;
struct TYPE_10__ {int * f_dbg; } ;


 int DEBUG_BUF_SIZE ;
 int debug_print_line_by_line (TYPE_3__ const*,int,char const*,int,char*) ;
 int debug_print_pk (TYPE_3__ const*,int,char const*,int,char*,int *) ;
 int debug_send_line (TYPE_3__ const*,int,char const*,int,char*) ;
 int debug_threshold ;
 int mbedtls_snprintf (char*,int,char*,char const*,int) ;
 int mbedtls_x509_crt_info (char*,int,char*,TYPE_2__ const*) ;

void mbedtls_debug_print_crt( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_x509_crt *crt )
{
    char str[DEBUG_BUF_SIZE];
    int i = 0;

    if( ssl->conf == ((void*)0) || ssl->conf->f_dbg == ((void*)0) || crt == ((void*)0) || level > debug_threshold )
        return;

    while( crt != ((void*)0) )
    {
        char buf[1024];

        mbedtls_snprintf( str, sizeof( str ), "%s #%d:\n", text, ++i );
        debug_send_line( ssl, level, file, line, str );

        mbedtls_x509_crt_info( buf, sizeof( buf ) - 1, "", crt );
        debug_print_line_by_line( ssl, level, file, line, buf );

        debug_print_pk( ssl, level, file, line, "crt->", &crt->pk );

        crt = crt->next;
    }
}

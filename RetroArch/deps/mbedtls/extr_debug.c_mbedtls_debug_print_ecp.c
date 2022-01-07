
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int str ;
struct TYPE_8__ {TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_9__ {int Y; int X; } ;
typedef TYPE_3__ mbedtls_ecp_point ;
struct TYPE_7__ {int * f_dbg; } ;


 int DEBUG_BUF_SIZE ;
 int debug_threshold ;
 int mbedtls_debug_print_mpi (TYPE_2__ const*,int,char const*,int,char*,int *) ;
 int mbedtls_snprintf (char*,int,char*,char const*) ;

void mbedtls_debug_print_ecp( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_ecp_point *X )
{
    char str[DEBUG_BUF_SIZE];

    if( ssl->conf == ((void*)0) || ssl->conf->f_dbg == ((void*)0) || level > debug_threshold )
        return;

    mbedtls_snprintf( str, sizeof( str ), "%s(X)", text );
    mbedtls_debug_print_mpi( ssl, level, file, line, str, &X->X );

    mbedtls_snprintf( str, sizeof( str ), "%s(Y)", text );
    mbedtls_debug_print_mpi( ssl, level, file, line, str, &X->Y );
}

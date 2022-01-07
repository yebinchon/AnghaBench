
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int txt ;
typedef int str ;
struct TYPE_6__ {TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_5__ {int * f_dbg; } ;


 int DEBUG_BUF_SIZE ;
 int debug_send_line (TYPE_2__ const*,int,char const*,int,char*) ;
 int debug_threshold ;
 scalar_t__ mbedtls_snprintf (char*,int,char*,...) ;
 int memset (char*,int ,int) ;

void mbedtls_debug_print_buf( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line, const char *text,
                      const unsigned char *buf, size_t len )
{
    char str[DEBUG_BUF_SIZE];
    char txt[17];
    size_t i, idx = 0;

    if( ssl->conf == ((void*)0) || ssl->conf->f_dbg == ((void*)0) || level > debug_threshold )
        return;

    mbedtls_snprintf( str + idx, sizeof( str ) - idx, "dumping '%s' (%u bytes)\n",
              text, (unsigned int) len );

    debug_send_line( ssl, level, file, line, str );

    idx = 0;
    memset( txt, 0, sizeof( txt ) );
    for( i = 0; i < len; i++ )
    {
        if( i >= 4096 )
            break;

        if( i % 16 == 0 )
        {
            if( i > 0 )
            {
                mbedtls_snprintf( str + idx, sizeof( str ) - idx, "  %s\n", txt );
                debug_send_line( ssl, level, file, line, str );

                idx = 0;
                memset( txt, 0, sizeof( txt ) );
            }

            idx += mbedtls_snprintf( str + idx, sizeof( str ) - idx, "%04x: ",
                             (unsigned int) i );

        }

        idx += mbedtls_snprintf( str + idx, sizeof( str ) - idx, " %02x",
                         (unsigned int) buf[i] );
        txt[i % 16] = ( buf[i] > 31 && buf[i] < 127 ) ? buf[i] : '.' ;
    }

    if( len > 0 )
    {
        for( ; i % 16 != 0; i++ )
            idx += mbedtls_snprintf( str + idx, sizeof( str ) - idx, "   " );

        mbedtls_snprintf( str + idx, sizeof( str ) - idx, "  %s\n", txt );
        debug_send_line( ssl, level, file, line, str );
    }
}

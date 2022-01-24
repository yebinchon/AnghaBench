#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  txt ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_6__ {TYPE_1__* conf; } ;
typedef  TYPE_2__ mbedtls_ssl_context ;
struct TYPE_5__ {int /*<<< orphan*/ * f_dbg; } ;

/* Variables and functions */
 int DEBUG_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*,int,char const*,int,char*) ; 
 int debug_threshold ; 
 scalar_t__ FUNC1 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC3( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line, const char *text,
                      const unsigned char *buf, size_t len )
{
    char str[DEBUG_BUF_SIZE];
    char txt[17];
    size_t i, idx = 0;

    if( ssl->conf == NULL || ssl->conf->f_dbg == NULL || level > debug_threshold )
        return;

    FUNC1( str + idx, sizeof( str ) - idx, "dumping '%s' (%u bytes)\n",
              text, (unsigned int) len );

    FUNC0( ssl, level, file, line, str );

    idx = 0;
    FUNC2( txt, 0, sizeof( txt ) );
    for( i = 0; i < len; i++ )
    {
        if( i >= 4096 )
            break;

        if( i % 16 == 0 )
        {
            if( i > 0 )
            {
                FUNC1( str + idx, sizeof( str ) - idx, "  %s\n", txt );
                FUNC0( ssl, level, file, line, str );

                idx = 0;
                FUNC2( txt, 0, sizeof( txt ) );
            }

            idx += FUNC1( str + idx, sizeof( str ) - idx, "%04x: ",
                             (unsigned int) i );

        }

        idx += FUNC1( str + idx, sizeof( str ) - idx, " %02x",
                         (unsigned int) buf[i] );
        txt[i % 16] = ( buf[i] > 31 && buf[i] < 127 ) ? buf[i] : '.' ;
    }

    if( len > 0 )
    {
        for( /* i = i */; i % 16 != 0; i++ )
            idx += FUNC1( str + idx, sizeof( str ) - idx, "   " );

        FUNC1( str + idx, sizeof( str ) - idx, "  %s\n", txt );
        FUNC0( ssl, level, file, line, str );
    }
}
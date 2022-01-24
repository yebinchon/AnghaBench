#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  str ;
struct TYPE_11__ {struct TYPE_11__* next; int /*<<< orphan*/  pk; } ;
typedef  TYPE_2__ mbedtls_x509_crt ;
struct TYPE_12__ {TYPE_1__* conf; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_10__ {int /*<<< orphan*/ * f_dbg; } ;

/* Variables and functions */
 int DEBUG_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,int,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*,int,char const*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,int,char const*,int,char*) ; 
 int debug_threshold ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,TYPE_2__ const*) ; 

void FUNC5( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_x509_crt *crt )
{
    char str[DEBUG_BUF_SIZE];
    int i = 0;

    if( ssl->conf == NULL || ssl->conf->f_dbg == NULL || crt == NULL || level > debug_threshold )
        return;

    while( crt != NULL )
    {
        char buf[1024];

        FUNC3( str, sizeof( str ), "%s #%d:\n", text, ++i );
        FUNC2( ssl, level, file, line, str );

        FUNC4( buf, sizeof( buf ) - 1, "", crt );
        FUNC0( ssl, level, file, line, buf );

        FUNC1( ssl, level, file, line, "crt->", &crt->pk );

        crt = crt->next;
    }
}
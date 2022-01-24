#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_ssl_context ;

/* Variables and functions */
 int DEBUG_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC2( const mbedtls_ssl_context *ssl, int level,
                                      const char *file, int line, const char *text )
{
    char str[DEBUG_BUF_SIZE];
    const char *start, *cur;

    start = text;
    for( cur = text; *cur != '\0'; cur++ )
    {
        if( *cur == '\n' )
        {
            size_t len = cur - start + 1;
            if( len > DEBUG_BUF_SIZE - 1 )
                len = DEBUG_BUF_SIZE - 1;

            FUNC1( str, start, len );
            str[len] = '\0';

            FUNC0( ssl, level, file, line, str );

            start = cur + 1;
        }
    }
}
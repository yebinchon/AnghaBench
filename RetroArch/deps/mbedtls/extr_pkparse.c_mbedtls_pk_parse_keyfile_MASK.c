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
typedef  int /*<<< orphan*/  mbedtls_pk_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (char const*,unsigned char**,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5( mbedtls_pk_context *ctx,
                      const char *path, const char *pwd )
{
    int ret;
    size_t n;
    unsigned char *buf;

    if( ( ret = FUNC1( path, &buf, &n ) ) != 0 )
        return( ret );

    if( pwd == NULL )
        ret = FUNC2( ctx, buf, n, NULL, 0 );
    else
        ret = FUNC2( ctx, buf, n,
                (const unsigned char *) pwd, FUNC4( pwd ) );

    FUNC3( buf, n );
    FUNC0( buf );

    return( ret );
}
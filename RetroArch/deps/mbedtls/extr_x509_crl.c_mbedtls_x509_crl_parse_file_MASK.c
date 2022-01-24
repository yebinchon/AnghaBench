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
typedef  int /*<<< orphan*/  mbedtls_x509_crl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (char const*,unsigned char**,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t) ; 

int FUNC4( mbedtls_x509_crl *chain, const char *path )
{
    int ret;
    size_t n;
    unsigned char *buf;

    if( ( ret = FUNC1( path, &buf, &n ) ) != 0 )
        return( ret );

    ret = FUNC2( chain, buf, n );

    FUNC3( buf, n );
    FUNC0( buf );

    return( ret );
}
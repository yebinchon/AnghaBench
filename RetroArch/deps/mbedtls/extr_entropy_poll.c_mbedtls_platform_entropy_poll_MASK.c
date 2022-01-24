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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MBEDTLS_ERR_ENTROPY_SOURCE_FAILED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 size_t FUNC3 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int has_getrandom ; 

int FUNC5( void *data,
                           unsigned char *output, size_t len, size_t *olen )
{
    FILE *file;
    size_t read_len;
    ((void) data);

#if defined(HAVE_GETRANDOM)
    if( has_getrandom == -1 )
        has_getrandom = ( check_version_3_17_plus() == 0 );

    if( has_getrandom )
    {
        int ret;

        if( ( ret = getrandom_wrapper( output, len, 0 ) ) < 0 )
            return( MBEDTLS_ERR_ENTROPY_SOURCE_FAILED );

        *olen = ret;
        return( 0 );
    }
#endif /* HAVE_GETRANDOM */

    *olen = 0;

    file = FUNC2( "/dev/urandom", "rb" );
    if( file == NULL )
        return( MBEDTLS_ERR_ENTROPY_SOURCE_FAILED );

    read_len = FUNC3( output, 1, len, file );
    if( read_len != len )
    {
        FUNC1( file );
        return( MBEDTLS_ERR_ENTROPY_SOURCE_FAILED );
    }

    FUNC1( file );
    *olen = len;

    return( 0 );
}
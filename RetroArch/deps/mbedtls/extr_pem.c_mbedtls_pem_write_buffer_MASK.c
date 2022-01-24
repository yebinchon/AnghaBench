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

/* Variables and functions */
 int MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL ; 
 int MBEDTLS_ERR_PEM_ALLOC_FAILED ; 
 int FUNC0 (unsigned char*,size_t,size_t*,unsigned char const*,size_t) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,...) ; 
 size_t FUNC4 (char const*) ; 

int FUNC5( const char *header, const char *footer,
                      const unsigned char *der_data, size_t der_len,
                      unsigned char *buf, size_t buf_len, size_t *olen )
{
    int ret;
    unsigned char *encode_buf, *c, *p = buf;
    size_t len = 0, use_len, add_len = 0;

    FUNC0( NULL, 0, &use_len, der_data, der_len );
    add_len = FUNC4( header ) + FUNC4( footer ) + ( use_len / 64 ) + 1;

    if( use_len + add_len > buf_len )
    {
        *olen = use_len + add_len;
        return( MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL );
    }

    if( ( encode_buf = (unsigned char*)FUNC1( 1, use_len ) ) == NULL )
        return( MBEDTLS_ERR_PEM_ALLOC_FAILED );

    if( ( ret = FUNC0( encode_buf, use_len, &use_len, der_data,
                               der_len ) ) != 0 )
    {
        FUNC2( encode_buf );
        return( ret );
    }

    FUNC3( p, header, FUNC4( header ) );
    p += FUNC4( header );
    c = encode_buf;

    while( use_len )
    {
        len = ( use_len > 64 ) ? 64 : use_len;
        FUNC3( p, c, len );
        use_len -= len;
        p += len;
        c += len;
        *p++ = '\n';
    }

    FUNC3( p, footer, FUNC4( footer ) );
    p += FUNC4( footer );

    *p++ = '\0';
    *olen = p - buf;

    FUNC2( encode_buf );
    return( 0 );
}
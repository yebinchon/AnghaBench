#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t buflen; unsigned char* buf; } ;
typedef  TYPE_1__ mbedtls_pem_context ;
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_9__ {int /*<<< orphan*/  P; int /*<<< orphan*/  len; int /*<<< orphan*/  G; } ;
typedef  TYPE_2__ mbedtls_dhm_context ;

/* Variables and functions */
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ; 
 int MBEDTLS_ERR_DHM_INVALID_FORMAT ; 
 int MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT ; 
 int FUNC0 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned char**,unsigned char*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,char*,char*,unsigned char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 

int FUNC9( mbedtls_dhm_context *dhm, const unsigned char *dhmin,
                   size_t dhminlen )
{
    int ret;
    size_t len;
    unsigned char *p, *end;
#if defined(MBEDTLS_PEM_PARSE_C)
    mbedtls_pem_context pem;

    mbedtls_pem_init( &pem );

    /* Avoid calling mbedtls_pem_read_buffer() on non-null-terminated string */
    if( dhminlen == 0 || dhmin[dhminlen - 1] != '\0' )
        ret = MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT;
    else
        ret = mbedtls_pem_read_buffer( &pem,
                               "-----BEGIN DH PARAMETERS-----",
                               "-----END DH PARAMETERS-----",
                               dhmin, NULL, 0, &dhminlen );

    if( ret == 0 )
    {
        /*
         * Was PEM encoded
         */
        dhminlen = pem.buflen;
    }
    else if( ret != MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT )
        goto exit;

    p = ( ret == 0 ) ? pem.buf : (unsigned char *) dhmin;
#else
    p = (unsigned char *) dhmin;
#endif /* MBEDTLS_PEM_PARSE_C */
    end = p + dhminlen;

    /*
     *  DHParams ::= SEQUENCE {
     *      prime              INTEGER,  -- P
     *      generator          INTEGER,  -- g
     *      privateValueLength INTEGER OPTIONAL
     *  }
     */
    if( ( ret = FUNC1( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        ret = MBEDTLS_ERR_DHM_INVALID_FORMAT + ret;
        goto exit;
    }

    end = p + len;

    if( ( ret = FUNC0( &p, end, &dhm->P  ) ) != 0 ||
        ( ret = FUNC0( &p, end, &dhm->G ) ) != 0 )
    {
        ret = MBEDTLS_ERR_DHM_INVALID_FORMAT + ret;
        goto exit;
    }

    if( p != end )
    {
        /* This might be the optional privateValueLength.
         * If so, we can cleanly discard it */
        mbedtls_mpi rec;
        FUNC4( &rec );
        ret = FUNC0( &p, end, &rec );
        FUNC3( &rec );
        if ( ret != 0 )
        {
            ret = MBEDTLS_ERR_DHM_INVALID_FORMAT + ret;
            goto exit;
        }
        if ( p != end )
        {
            ret = MBEDTLS_ERR_DHM_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH;
            goto exit;
        }
    }

    ret = 0;

    dhm->len = FUNC5( &dhm->P );

exit:
#if defined(MBEDTLS_PEM_PARSE_C)
    mbedtls_pem_free( &pem );
#endif
    if( ret != 0 )
        FUNC2( dhm );

    return( ret );
}
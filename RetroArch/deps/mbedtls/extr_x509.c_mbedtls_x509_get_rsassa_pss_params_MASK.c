#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int tag; size_t len; scalar_t__ p; } ;
typedef  TYPE_1__ mbedtls_x509_buf ;
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;

/* Variables and functions */
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_CONTEXT_SPECIFIC ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ; 
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ; 
 int MBEDTLS_ERR_OID_NOT_FOUND ; 
 int MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE ; 
 int MBEDTLS_ERR_X509_INVALID_ALG ; 
 int /*<<< orphan*/  MBEDTLS_MD_SHA1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  MBEDTLS_OID_MGF1 ; 
 int FUNC1 (unsigned char**,unsigned char const*,int*) ; 
 int FUNC2 (unsigned char**,unsigned char const*,size_t*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned char**,unsigned char const*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (unsigned char**,unsigned char const*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC7( const mbedtls_x509_buf *params,
                                mbedtls_md_type_t *md_alg, mbedtls_md_type_t *mgf_md,
                                int *salt_len )
{
    int ret;
    unsigned char *p;
    const unsigned char *end, *end2;
    size_t len;
    mbedtls_x509_buf alg_id, alg_params;

    /* First set everything to defaults */
    *md_alg = MBEDTLS_MD_SHA1;
    *mgf_md = MBEDTLS_MD_SHA1;
    *salt_len = 20;

    /* Make sure params is a SEQUENCE and setup bounds */
    if( params->tag != ( MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) )
        return( MBEDTLS_ERR_X509_INVALID_ALG +
                MBEDTLS_ERR_ASN1_UNEXPECTED_TAG );

    p = (unsigned char *) params->p;
    end = p + params->len;

    if( p == end )
        return( 0 );

    /*
     * HashAlgorithm
     */
    if( ( ret = FUNC2( &p, end, &len,
                    MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 0 ) ) == 0 )
    {
        end2 = p + len;

        /* HashAlgorithm ::= AlgorithmIdentifier (without parameters) */
        if( ( ret = FUNC5( &p, end2, &alg_id ) ) != 0 )
            return( ret );

        if( ( ret = FUNC3( &alg_id, md_alg ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

        if( p != end2 )
            return( MBEDTLS_ERR_X509_INVALID_ALG +
                    MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }
    else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

    if( p == end )
        return( 0 );

    /*
     * MaskGenAlgorithm
     */
    if( ( ret = FUNC2( &p, end, &len,
                    MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 1 ) ) == 0 )
    {
        end2 = p + len;

        /* MaskGenAlgorithm ::= AlgorithmIdentifier (params = HashAlgorithm) */
        if( ( ret = FUNC4( &p, end2, &alg_id, &alg_params ) ) != 0 )
            return( ret );

        /* Only MFG1 is recognised for now */
        if( FUNC0( MBEDTLS_OID_MGF1, &alg_id ) != 0 )
            return( MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE +
                    MBEDTLS_ERR_OID_NOT_FOUND );

        /* Parse HashAlgorithm */
        if( ( ret = FUNC6( &alg_params, mgf_md ) ) != 0 )
            return( ret );

        if( p != end2 )
            return( MBEDTLS_ERR_X509_INVALID_ALG +
                    MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }
    else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

    if( p == end )
        return( 0 );

    /*
     * salt_len
     */
    if( ( ret = FUNC2( &p, end, &len,
                    MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 2 ) ) == 0 )
    {
        end2 = p + len;

        if( ( ret = FUNC1( &p, end2, salt_len ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

        if( p != end2 )
            return( MBEDTLS_ERR_X509_INVALID_ALG +
                    MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }
    else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

    if( p == end )
        return( 0 );

    /*
     * trailer_field (if present, must be 1)
     */
    if( ( ret = FUNC2( &p, end, &len,
                    MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 3 ) ) == 0 )
    {
        int trailer_field;

        end2 = p + len;

        if( ( ret = FUNC1( &p, end2, &trailer_field ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

        if( p != end2 )
            return( MBEDTLS_ERR_X509_INVALID_ALG +
                    MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

        if( trailer_field != 1 )
            return( MBEDTLS_ERR_X509_INVALID_ALG );
    }
    else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

    if( p != end )
        return( MBEDTLS_ERR_X509_INVALID_ALG +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    return( 0 );
}
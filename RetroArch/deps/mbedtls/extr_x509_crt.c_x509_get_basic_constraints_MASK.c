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
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ; 
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ; 
 int MBEDTLS_ERR_X509_INVALID_EXTENSIONS ; 
 int FUNC0 (unsigned char**,unsigned char const*,int*) ; 
 int FUNC1 (unsigned char**,unsigned char const*,int*) ; 
 int FUNC2 (unsigned char**,unsigned char const*,size_t*,int) ; 

__attribute__((used)) static int FUNC3( unsigned char **p,
                                       const unsigned char *end,
                                       int *ca_istrue,
                                       int *max_pathlen )
{
    int ret;
    size_t len;

    /*
     * BasicConstraints ::= SEQUENCE {
     *      cA                      BOOLEAN DEFAULT FALSE,
     *      pathLenConstraint       INTEGER (0..MAX) OPTIONAL }
     */
    *ca_istrue = 0; /* DEFAULT FALSE */
    *max_pathlen = 0; /* endless */

    if( ( ret = FUNC2( p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS + ret );

    if( *p == end )
        return( 0 );

    if( ( ret = FUNC0( p, end, ca_istrue ) ) != 0 )
    {
        if( ret == MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
            ret = FUNC1( p, end, ca_istrue );

        if( ret != 0 )
            return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS + ret );

        if( *ca_istrue != 0 )
            *ca_istrue = 1;
    }

    if( *p == end )
        return( 0 );

    if( ( ret = FUNC1( p, end, max_pathlen ) ) != 0 )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS + ret );

    if( *p != end )
        return( MBEDTLS_ERR_X509_INVALID_EXTENSIONS +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    (*max_pathlen)++;

    return( 0 );
}
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
typedef  int /*<<< orphan*/  mbedtls_x509_time ;

/* Variables and functions */
 unsigned char MBEDTLS_ASN1_GENERALIZED_TIME ; 
 unsigned char MBEDTLS_ASN1_UTC_TIME ; 
 int MBEDTLS_ERR_ASN1_OUT_OF_DATA ; 
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ; 
 int MBEDTLS_ERR_X509_INVALID_DATE ; 
 int FUNC0 (unsigned char**,unsigned char const*,size_t*) ; 
 int FUNC1 (unsigned char**,size_t,size_t,int /*<<< orphan*/ *) ; 

int FUNC2( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_time *time )
{
    int ret;
    size_t len, year_len;
    unsigned char tag;

    if( ( end - *p ) < 1 )
        return( MBEDTLS_ERR_X509_INVALID_DATE +
                MBEDTLS_ERR_ASN1_OUT_OF_DATA );

    tag = **p;

    if( tag == MBEDTLS_ASN1_UTC_TIME )
        year_len = 2;
    else if( tag == MBEDTLS_ASN1_GENERALIZED_TIME )
        year_len = 4;
    else
        return( MBEDTLS_ERR_X509_INVALID_DATE +
                MBEDTLS_ERR_ASN1_UNEXPECTED_TAG );

    (*p)++;
    ret = FUNC0( p, end, &len );

    if( ret != 0 )
        return( MBEDTLS_ERR_X509_INVALID_DATE + ret );

    return FUNC1( p, len, year_len, time );
}
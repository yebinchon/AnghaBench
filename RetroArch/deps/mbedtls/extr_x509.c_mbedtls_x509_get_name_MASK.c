#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int next_merged; struct TYPE_4__* next; } ;
typedef  TYPE_1__ mbedtls_x509_name ;

/* Variables and functions */
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SET ; 
 int MBEDTLS_ERR_X509_ALLOC_FAILED ; 
 int MBEDTLS_ERR_X509_INVALID_NAME ; 
 int FUNC0 (unsigned char**,unsigned char const*,size_t*,int) ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (unsigned char**,unsigned char const*,TYPE_1__*) ; 

int FUNC3( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_name *cur )
{
    int ret;
    size_t set_len;
    const unsigned char *end_set;

    /* don't use recursion, we'd risk stack overflow if not optimized */
    while( 1 )
    {
        /*
         * parse SET
         */
        if( ( ret = FUNC0( p, end, &set_len,
                MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SET ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_NAME + ret );

        end_set  = *p + set_len;

        while( 1 )
        {
            if( ( ret = FUNC2( p, end_set, cur ) ) != 0 )
                return( ret );

            if( *p == end_set )
                break;

            /* Mark this item as being no the only one in a set */
            cur->next_merged = 1;

            cur->next = FUNC1( 1, sizeof( mbedtls_x509_name ) );

            if( cur->next == NULL )
                return( MBEDTLS_ERR_X509_ALLOC_FAILED );

            cur = cur->next;
        }

        /*
         * continue until end of SEQUENCE is reached
         */
        if( *p == end )
            return( 0 );

        cur->next = FUNC1( 1, sizeof( mbedtls_x509_name ) );

        if( cur->next == NULL )
            return( MBEDTLS_ERR_X509_ALLOC_FAILED );

        cur = cur->next;
    }
}
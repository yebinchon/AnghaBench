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
typedef  int /*<<< orphan*/  mbedtls_asn1_named_data ;

/* Variables and functions */
 int MBEDTLS_ERR_X509_ALLOC_FAILED ; 
 int MBEDTLS_ERR_X509_INVALID_NAME ; 
 int MBEDTLS_ERR_X509_UNKNOWN_OID ; 
 int MBEDTLS_X509_MAX_DN_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,char const*,int,unsigned char*,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int) ; 

int FUNC4( mbedtls_asn1_named_data **head, const char *name )
{
    int ret = 0;
    const char *s = name, *c = s;
    const char *end = s + FUNC2( s );
    const char *oid = NULL;
    int in_tag = 1;
    char data[MBEDTLS_X509_MAX_DN_NAME_SIZE];
    char *d = data;

    /* Clear existing chain if present */
    FUNC0( head );

    while( c <= end )
    {
        if( in_tag && *c == '=' )
        {
            if( ( oid = FUNC3( s, c - s ) ) == NULL )
            {
                ret = MBEDTLS_ERR_X509_UNKNOWN_OID;
                goto exit;
            }

            s = c + 1;
            in_tag = 0;
            d = data;
        }

        if( !in_tag && *c == '\\' && c != end )
        {
            c++;

            /* Check for valid escaped characters */
            if( c == end || *c != ',' )
            {
                ret = MBEDTLS_ERR_X509_INVALID_NAME;
                goto exit;
            }
        }
        else if( !in_tag && ( *c == ',' || c == end ) )
        {
            if( FUNC1( head, oid, FUNC2( oid ),
                                       (unsigned char *) data,
                                       d - data ) == NULL )
            {
                return( MBEDTLS_ERR_X509_ALLOC_FAILED );
            }

            while( c < end && *(c + 1) == ' ' )
                c++;

            s = c + 1;
            in_tag = 1;
        }

        if( !in_tag && s != c + 1 )
        {
            *(d++) = *c;

            if( d - data == MBEDTLS_X509_MAX_DN_NAME_SIZE )
            {
                ret = MBEDTLS_ERR_X509_INVALID_NAME;
                goto exit;
            }
        }

        c++;
    }

exit:

    return( ret );
}
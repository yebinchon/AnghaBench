
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next_merged; struct TYPE_4__* next; } ;
typedef TYPE_1__ mbedtls_x509_name ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_SET ;
 int MBEDTLS_ERR_X509_ALLOC_FAILED ;
 int MBEDTLS_ERR_X509_INVALID_NAME ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const*,size_t*,int) ;
 void* mbedtls_calloc (int,int) ;
 int x509_get_attr_type_value (unsigned char**,unsigned char const*,TYPE_1__*) ;

int mbedtls_x509_get_name( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_name *cur )
{
    int ret;
    size_t set_len;
    const unsigned char *end_set;


    while( 1 )
    {



        if( ( ret = mbedtls_asn1_get_tag( p, end, &set_len,
                MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SET ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_NAME + ret );

        end_set = *p + set_len;

        while( 1 )
        {
            if( ( ret = x509_get_attr_type_value( p, end_set, cur ) ) != 0 )
                return( ret );

            if( *p == end_set )
                break;


            cur->next_merged = 1;

            cur->next = mbedtls_calloc( 1, sizeof( mbedtls_x509_name ) );

            if( cur->next == ((void*)0) )
                return( MBEDTLS_ERR_X509_ALLOC_FAILED );

            cur = cur->next;
        }




        if( *p == end )
            return( 0 );

        cur->next = mbedtls_calloc( 1, sizeof( mbedtls_x509_name ) );

        if( cur->next == ((void*)0) )
            return( MBEDTLS_ERR_X509_ALLOC_FAILED );

        cur = cur->next;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned char tag; size_t len; unsigned char* p; } ;
struct TYPE_4__ {struct TYPE_4__* next; TYPE_2__ buf; } ;
typedef TYPE_1__ mbedtls_asn1_sequence ;
typedef TYPE_2__ mbedtls_asn1_buf ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_ALLOC_FAILED ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const*,size_t*,int) ;
 scalar_t__ mbedtls_calloc (int,int) ;

int mbedtls_asn1_get_sequence_of( unsigned char **p,
                          const unsigned char *end,
                          mbedtls_asn1_sequence *cur,
                          int tag)
{
    int ret;
    size_t len;
    mbedtls_asn1_buf *buf;


    if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
        return( ret );

    if( *p + len != end )
        return( MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    while( *p < end )
    {
        buf = &(cur->buf);
        buf->tag = **p;

        if( ( ret = mbedtls_asn1_get_tag( p, end, &buf->len, tag ) ) != 0 )
            return( ret );

        buf->p = *p;
        *p += buf->len;


        if( *p < end )
        {
            cur->next = (mbedtls_asn1_sequence*)mbedtls_calloc( 1,
                                            sizeof( mbedtls_asn1_sequence ) );

            if( cur->next == ((void*)0) )
                return( MBEDTLS_ERR_ASN1_ALLOC_FAILED );

            cur = cur->next;
        }
    }


    cur->next = ((void*)0);

    if( *p != end )
        return( MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    return( 0 );
}

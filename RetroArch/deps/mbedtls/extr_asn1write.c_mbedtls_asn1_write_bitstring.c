
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_ASN1_BIT_STRING ;
 int MBEDTLS_ASN1_CHK_ADD (size_t,int ) ;
 int MBEDTLS_ERR_ASN1_BUF_TOO_SMALL ;
 int mbedtls_asn1_write_len (unsigned char**,unsigned char*,size_t) ;
 int mbedtls_asn1_write_tag (unsigned char**,unsigned char*,int ) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;

int mbedtls_asn1_write_bitstring( unsigned char **p, unsigned char *start,
                          const unsigned char *buf, size_t bits )
{
    int ret;
    size_t len = 0, size;

    size = ( bits / 8 ) + ( ( bits % 8 ) ? 1 : 0 );


    if( *p < start || (size_t)( *p - start ) < size + 1 )
        return( MBEDTLS_ERR_ASN1_BUF_TOO_SMALL );

    len = size + 1;
    (*p) -= size;
    memcpy( *p, buf, size );


    *--(*p) = (unsigned char) (size * 8 - bits);

    MBEDTLS_ASN1_CHK_ADD( len, mbedtls_asn1_write_len( p, start, len ) );
    MBEDTLS_ASN1_CHK_ADD( len, mbedtls_asn1_write_tag( p, start, MBEDTLS_ASN1_BIT_STRING ) );

    return( (int) len );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_ASN1_CHK_ADD (size_t,int ) ;
 int MBEDTLS_ASN1_NULL ;
 int mbedtls_asn1_write_len (unsigned char**,unsigned char*,int ) ;
 int mbedtls_asn1_write_tag (unsigned char**,unsigned char*,int ) ;

int mbedtls_asn1_write_null( unsigned char **p, unsigned char *start )
{
    int ret;
    size_t len = 0;


    MBEDTLS_ASN1_CHK_ADD( len, mbedtls_asn1_write_len( p, start, 0) );
    MBEDTLS_ASN1_CHK_ADD( len, mbedtls_asn1_write_tag( p, start, MBEDTLS_ASN1_NULL ) );

    return( (int) len );
}

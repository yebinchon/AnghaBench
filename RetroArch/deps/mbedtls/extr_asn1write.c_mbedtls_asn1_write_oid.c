
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_ASN1_CHK_ADD (size_t,int ) ;
 int MBEDTLS_ASN1_OID ;
 int mbedtls_asn1_write_len (unsigned char**,unsigned char*,size_t) ;
 int mbedtls_asn1_write_raw_buffer (unsigned char**,unsigned char*,unsigned char const*,size_t) ;
 int mbedtls_asn1_write_tag (unsigned char**,unsigned char*,int ) ;

int mbedtls_asn1_write_oid( unsigned char **p, unsigned char *start,
                    const char *oid, size_t oid_len )
{
    int ret;
    size_t len = 0;

    MBEDTLS_ASN1_CHK_ADD( len, mbedtls_asn1_write_raw_buffer( p, start,
                                  (const unsigned char *) oid, oid_len ) );
    MBEDTLS_ASN1_CHK_ADD( len , mbedtls_asn1_write_len( p, start, len ) );
    MBEDTLS_ASN1_CHK_ADD( len , mbedtls_asn1_write_tag( p, start, MBEDTLS_ASN1_OID ) );

    return( (int) len );
}

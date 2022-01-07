
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int subject_key; } ;
typedef TYPE_1__ mbedtls_x509write_cert ;
typedef int buf ;


 int MBEDTLS_ASN1_CHK_ADD (size_t,int ) ;
 int MBEDTLS_ASN1_OCTET_STRING ;
 int MBEDTLS_MPI_MAX_SIZE ;
 int MBEDTLS_OID_SIZE (int ) ;
 int MBEDTLS_OID_SUBJECT_KEY_IDENTIFIER ;
 int mbedtls_asn1_write_len (unsigned char**,unsigned char*,size_t) ;
 int mbedtls_asn1_write_tag (unsigned char**,unsigned char*,int ) ;
 int mbedtls_pk_write_pubkey (unsigned char**,unsigned char*,int ) ;
 int mbedtls_sha1 (unsigned char*,size_t,unsigned char*) ;
 int mbedtls_x509write_crt_set_extension (TYPE_1__*,int ,int ,int ,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;

int mbedtls_x509write_crt_set_subject_key_identifier( mbedtls_x509write_cert *ctx )
{
    int ret;
    unsigned char buf[MBEDTLS_MPI_MAX_SIZE * 2 + 20];
    unsigned char *c = buf + sizeof(buf);
    size_t len = 0;

    memset( buf, 0, sizeof(buf) );
    MBEDTLS_ASN1_CHK_ADD( len, mbedtls_pk_write_pubkey( &c, buf, ctx->subject_key ) );

    mbedtls_sha1( buf + sizeof(buf) - len, len, buf + sizeof(buf) - 20 );
    c = buf + sizeof(buf) - 20;
    len = 20;

    MBEDTLS_ASN1_CHK_ADD( len, mbedtls_asn1_write_len( &c, buf, len ) );
    MBEDTLS_ASN1_CHK_ADD( len, mbedtls_asn1_write_tag( &c, buf, MBEDTLS_ASN1_OCTET_STRING ) );

    return mbedtls_x509write_crt_set_extension( ctx, MBEDTLS_OID_SUBJECT_KEY_IDENTIFIER,
                                        MBEDTLS_OID_SIZE( MBEDTLS_OID_SUBJECT_KEY_IDENTIFIER ),
                                        0, buf + sizeof(buf) - len, len );
}

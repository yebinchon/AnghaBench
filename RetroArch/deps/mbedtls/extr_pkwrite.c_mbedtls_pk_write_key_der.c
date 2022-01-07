
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int N; int E; int D; int P; int Q; int DP; int DQ; int QP; } ;
typedef TYPE_1__ mbedtls_rsa_context ;
typedef int mbedtls_pk_context ;
struct TYPE_8__ {int d; } ;
typedef TYPE_2__ mbedtls_ecp_keypair ;


 int MBEDTLS_ASN1_BIT_STRING ;
 int MBEDTLS_ASN1_CHK_ADD (size_t,int ) ;
 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_CONTEXT_SPECIFIC ;
 unsigned char MBEDTLS_ASN1_OCTET_STRING ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_BUF_TOO_SMALL ;
 int MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE ;
 scalar_t__ MBEDTLS_PK_ECKEY ;
 scalar_t__ MBEDTLS_PK_RSA ;
 int mbedtls_asn1_write_int (unsigned char**,unsigned char*,int) ;
 int mbedtls_asn1_write_len (unsigned char**,unsigned char*,size_t) ;
 int mbedtls_asn1_write_mpi (unsigned char**,unsigned char*,int *) ;
 int mbedtls_asn1_write_tag (unsigned char**,unsigned char*,int) ;
 TYPE_2__* mbedtls_pk_ec (int ) ;
 scalar_t__ mbedtls_pk_get_type (int *) ;
 TYPE_1__* mbedtls_pk_rsa (int ) ;
 int pk_write_ec_param (unsigned char**,unsigned char*,TYPE_2__*) ;
 int pk_write_ec_pubkey (unsigned char**,unsigned char*,TYPE_2__*) ;

int mbedtls_pk_write_key_der( mbedtls_pk_context *key, unsigned char *buf, size_t size )
{
    int ret;
    unsigned char *c = buf + size;
    size_t len = 0;
        return( MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE );

    return( (int) len );
}

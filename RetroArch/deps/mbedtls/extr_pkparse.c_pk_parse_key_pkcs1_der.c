
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int N; int len; int QP; int DQ; int DP; int Q; int P; int D; int E; int ver; } ;
typedef TYPE_1__ mbedtls_rsa_context ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_PK_KEY_INVALID_FORMAT ;
 int MBEDTLS_ERR_PK_KEY_INVALID_VERSION ;
 int mbedtls_asn1_get_int (unsigned char**,unsigned char*,int *) ;
 int mbedtls_asn1_get_mpi (unsigned char**,unsigned char*,int *) ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char*,size_t*,int) ;
 int mbedtls_mpi_size (int *) ;
 int mbedtls_rsa_check_privkey (TYPE_1__*) ;
 int mbedtls_rsa_free (TYPE_1__*) ;

__attribute__((used)) static int pk_parse_key_pkcs1_der( mbedtls_rsa_context *rsa,
                                   const unsigned char *key,
                                   size_t keylen )
{
    int ret;
    size_t len;
    unsigned char *p, *end;

    p = (unsigned char *) key;
    end = p + keylen;
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    end = p + len;

    if( ( ret = mbedtls_asn1_get_int( &p, end, &rsa->ver ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    if( rsa->ver != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_VERSION );
    }

    if( ( ret = mbedtls_asn1_get_mpi( &p, end, &rsa->N ) ) != 0 ||
        ( ret = mbedtls_asn1_get_mpi( &p, end, &rsa->E ) ) != 0 ||
        ( ret = mbedtls_asn1_get_mpi( &p, end, &rsa->D ) ) != 0 ||
        ( ret = mbedtls_asn1_get_mpi( &p, end, &rsa->P ) ) != 0 ||
        ( ret = mbedtls_asn1_get_mpi( &p, end, &rsa->Q ) ) != 0 ||
        ( ret = mbedtls_asn1_get_mpi( &p, end, &rsa->DP ) ) != 0 ||
        ( ret = mbedtls_asn1_get_mpi( &p, end, &rsa->DQ ) ) != 0 ||
        ( ret = mbedtls_asn1_get_mpi( &p, end, &rsa->QP ) ) != 0 )
    {
        mbedtls_rsa_free( rsa );
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    rsa->len = mbedtls_mpi_size( &rsa->N );

    if( p != end )
    {
        mbedtls_rsa_free( rsa );
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    if( ( ret = mbedtls_rsa_check_privkey( rsa ) ) != 0 )
    {
        mbedtls_rsa_free( rsa );
        return( ret );
    }

    return( 0 );
}

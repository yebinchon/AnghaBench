
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int G; } ;
struct TYPE_8__ {int d; TYPE_2__ grp; int Q; } ;
typedef TYPE_1__ mbedtls_ecp_keypair ;
typedef int mbedtls_asn1_buf ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_CONTEXT_SPECIFIC ;
 int MBEDTLS_ASN1_OCTET_STRING ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_PK_KEY_INVALID_FORMAT ;
 int MBEDTLS_ERR_PK_KEY_INVALID_VERSION ;
 int mbedtls_asn1_get_bitstring_null (unsigned char**,unsigned char*,size_t*) ;
 int mbedtls_asn1_get_int (unsigned char**,unsigned char*,int*) ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char*,size_t*,int) ;
 int mbedtls_ecp_check_privkey (TYPE_2__*,int *) ;
 int mbedtls_ecp_keypair_free (TYPE_1__*) ;
 int mbedtls_ecp_mul (TYPE_2__*,int *,int *,int *,int *,int *) ;
 int mbedtls_mpi_read_binary (int *,unsigned char*,size_t) ;
 int pk_get_ecparams (unsigned char**,unsigned char*,int *) ;
 int pk_get_ecpubkey (unsigned char**,unsigned char*,TYPE_1__*) ;
 int pk_use_ecparams (int *,TYPE_2__*) ;

__attribute__((used)) static int pk_parse_key_sec1_der( mbedtls_ecp_keypair *eck,
                                  const unsigned char *key,
                                  size_t keylen )
{
    int ret;
    int version, pubkey_done;
    size_t len;
    mbedtls_asn1_buf params;
    unsigned char *p = (unsigned char *) key;
    unsigned char *end = p + keylen;
    unsigned char *end2;
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    end = p + len;

    if( ( ret = mbedtls_asn1_get_int( &p, end, &version ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    if( version != 1 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_VERSION );

    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len, MBEDTLS_ASN1_OCTET_STRING ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    if( ( ret = mbedtls_mpi_read_binary( &eck->d, p, len ) ) != 0 )
    {
        mbedtls_ecp_keypair_free( eck );
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    p += len;

    pubkey_done = 0;
    if( p != end )
    {



        if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
                        MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 0 ) ) == 0 )
        {
            if( ( ret = pk_get_ecparams( &p, p + len, &params) ) != 0 ||
                ( ret = pk_use_ecparams( &params, &eck->grp ) ) != 0 )
            {
                mbedtls_ecp_keypair_free( eck );
                return( ret );
            }
        }
        else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        {
            mbedtls_ecp_keypair_free( eck );
            return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
        }





        if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
                        MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 1 ) ) == 0 )
        {
            end2 = p + len;

            if( ( ret = mbedtls_asn1_get_bitstring_null( &p, end2, &len ) ) != 0 )
                return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

            if( p + len != end2 )
                return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT +
                        MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

            if( ( ret = pk_get_ecpubkey( &p, end2, eck ) ) == 0 )
                pubkey_done = 1;
            else
            {




                if( ret != MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE )
                    return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT );
            }
        }
        else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        {
            mbedtls_ecp_keypair_free( eck );
            return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
        }
    }

    if( ! pubkey_done &&
        ( ret = mbedtls_ecp_mul( &eck->grp, &eck->Q, &eck->d, &eck->grp.G,
                                                      ((void*)0), ((void*)0) ) ) != 0 )
    {
        mbedtls_ecp_keypair_free( eck );
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    if( ( ret = mbedtls_ecp_check_privkey( &eck->grp, &eck->d ) ) != 0 )
    {
        mbedtls_ecp_keypair_free( eck );
        return( ret );
    }

    return( 0 );
}

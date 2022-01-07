
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tag; size_t len; scalar_t__ p; } ;
typedef TYPE_1__ mbedtls_x509_buf ;
typedef int mbedtls_md_type_t ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_CONTEXT_SPECIFIC ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int MBEDTLS_ERR_OID_NOT_FOUND ;
 int MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_X509_INVALID_ALG ;
 int MBEDTLS_MD_SHA1 ;
 scalar_t__ MBEDTLS_OID_CMP (int ,TYPE_1__*) ;
 int MBEDTLS_OID_MGF1 ;
 int mbedtls_asn1_get_int (unsigned char**,unsigned char const*,int*) ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char const*,size_t*,int) ;
 int mbedtls_oid_get_md_alg (TYPE_1__*,int *) ;
 int mbedtls_x509_get_alg (unsigned char**,unsigned char const*,TYPE_1__*,TYPE_1__*) ;
 int mbedtls_x509_get_alg_null (unsigned char**,unsigned char const*,TYPE_1__*) ;
 int x509_get_hash_alg (TYPE_1__*,int *) ;

int mbedtls_x509_get_rsassa_pss_params( const mbedtls_x509_buf *params,
                                mbedtls_md_type_t *md_alg, mbedtls_md_type_t *mgf_md,
                                int *salt_len )
{
    int ret;
    unsigned char *p;
    const unsigned char *end, *end2;
    size_t len;
    mbedtls_x509_buf alg_id, alg_params;


    *md_alg = MBEDTLS_MD_SHA1;
    *mgf_md = MBEDTLS_MD_SHA1;
    *salt_len = 20;


    if( params->tag != ( MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) )
        return( MBEDTLS_ERR_X509_INVALID_ALG +
                MBEDTLS_ERR_ASN1_UNEXPECTED_TAG );

    p = (unsigned char *) params->p;
    end = p + params->len;

    if( p == end )
        return( 0 );




    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
                    MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 0 ) ) == 0 )
    {
        end2 = p + len;


        if( ( ret = mbedtls_x509_get_alg_null( &p, end2, &alg_id ) ) != 0 )
            return( ret );

        if( ( ret = mbedtls_oid_get_md_alg( &alg_id, md_alg ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

        if( p != end2 )
            return( MBEDTLS_ERR_X509_INVALID_ALG +
                    MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }
    else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

    if( p == end )
        return( 0 );




    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
                    MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 1 ) ) == 0 )
    {
        end2 = p + len;


        if( ( ret = mbedtls_x509_get_alg( &p, end2, &alg_id, &alg_params ) ) != 0 )
            return( ret );


        if( MBEDTLS_OID_CMP( MBEDTLS_OID_MGF1, &alg_id ) != 0 )
            return( MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE +
                    MBEDTLS_ERR_OID_NOT_FOUND );


        if( ( ret = x509_get_hash_alg( &alg_params, mgf_md ) ) != 0 )
            return( ret );

        if( p != end2 )
            return( MBEDTLS_ERR_X509_INVALID_ALG +
                    MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }
    else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

    if( p == end )
        return( 0 );




    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
                    MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 2 ) ) == 0 )
    {
        end2 = p + len;

        if( ( ret = mbedtls_asn1_get_int( &p, end2, salt_len ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

        if( p != end2 )
            return( MBEDTLS_ERR_X509_INVALID_ALG +
                    MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }
    else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

    if( p == end )
        return( 0 );




    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
                    MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 3 ) ) == 0 )
    {
        int trailer_field;

        end2 = p + len;

        if( ( ret = mbedtls_asn1_get_int( &p, end2, &trailer_field ) ) != 0 )
            return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

        if( p != end2 )
            return( MBEDTLS_ERR_X509_INVALID_ALG +
                    MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

        if( trailer_field != 1 )
            return( MBEDTLS_ERR_X509_INVALID_ALG );
    }
    else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        return( MBEDTLS_ERR_X509_INVALID_ALG + ret );

    if( p != end )
        return( MBEDTLS_ERR_X509_INVALID_ALG +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

    return( 0 );
}

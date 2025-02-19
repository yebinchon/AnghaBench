
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ len; int p; } ;
struct TYPE_15__ {unsigned char* p; int len; } ;
struct TYPE_18__ {unsigned char* p; int len; } ;
struct TYPE_17__ {unsigned char* p; int len; } ;
struct TYPE_16__ {int len; unsigned char* p; } ;
struct TYPE_19__ {int version; int sig; TYPE_6__ sig_oid; int subject_id; int issuer_id; int pk; TYPE_1__ subject_raw; int subject; int valid_to; int valid_from; TYPE_4__ issuer_raw; int issuer; int sig_opts; int sig_pk; int sig_md; int serial; TYPE_3__ tbs; TYPE_2__ raw; } ;
typedef TYPE_5__ mbedtls_x509_crt ;
typedef TYPE_6__ mbedtls_x509_buf ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_X509_ALLOC_FAILED ;
 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_X509_INVALID_FORMAT ;
 int MBEDTLS_ERR_X509_SIG_MISMATCH ;
 int MBEDTLS_ERR_X509_UNKNOWN_VERSION ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char*,size_t*,int) ;
 unsigned char* mbedtls_calloc (int,int) ;
 int mbedtls_pk_parse_subpubkey (unsigned char**,unsigned char*,int *) ;
 int mbedtls_x509_crt_free (TYPE_5__*) ;
 int mbedtls_x509_get_alg (unsigned char**,unsigned char*,TYPE_6__*,TYPE_6__*) ;
 int mbedtls_x509_get_name (unsigned char**,unsigned char*,int *) ;
 int mbedtls_x509_get_serial (unsigned char**,unsigned char*,int *) ;
 int mbedtls_x509_get_sig (unsigned char**,unsigned char*,int *) ;
 int mbedtls_x509_get_sig_alg (TYPE_6__*,TYPE_6__*,int *,int *,int *) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int memset (TYPE_6__*,int ,int) ;
 int x509_get_crt_ext (unsigned char**,unsigned char*,TYPE_5__*) ;
 int x509_get_dates (unsigned char**,unsigned char*,int *,int *) ;
 int x509_get_uid (unsigned char**,unsigned char*,int *,int) ;
 int x509_get_version (unsigned char**,unsigned char*,int*) ;

__attribute__((used)) static int x509_crt_parse_der_core( mbedtls_x509_crt *crt, const unsigned char *buf,
                                    size_t buflen )
{
    int ret;
    size_t len;
    unsigned char *p, *end, *crt_end;
    mbedtls_x509_buf sig_params1, sig_params2, sig_oid2;

    memset( &sig_params1, 0, sizeof( mbedtls_x509_buf ) );
    memset( &sig_params2, 0, sizeof( mbedtls_x509_buf ) );
    memset( &sig_oid2, 0, sizeof( mbedtls_x509_buf ) );




    if( crt == ((void*)0) || buf == ((void*)0) )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );


    p = (unsigned char*) buf;
    len = buflen;
    end = p + len;







    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT );
    }

    if( len > (size_t) ( end - p ) )
    {
        mbedtls_x509_crt_free( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }
    crt_end = p + len;


    crt->raw.len = crt_end - buf;
    crt->raw.p = p = mbedtls_calloc( 1, crt->raw.len );
    if( p == ((void*)0) )
        return( MBEDTLS_ERR_X509_ALLOC_FAILED );

    memcpy( p, buf, crt->raw.len );


    p += crt->raw.len - len;
    end = crt_end = p + len;




    crt->tbs.p = p;

    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    end = p + len;
    crt->tbs.len = end - crt->tbs.p;
    if( ( ret = x509_get_version( &p, end, &crt->version ) ) != 0 ||
        ( ret = mbedtls_x509_get_serial( &p, end, &crt->serial ) ) != 0 ||
        ( ret = mbedtls_x509_get_alg( &p, end, &crt->sig_oid,
                                            &sig_params1 ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }

    crt->version++;

    if( crt->version > 3 )
    {
        mbedtls_x509_crt_free( crt );
        return( MBEDTLS_ERR_X509_UNKNOWN_VERSION );
    }

    if( ( ret = mbedtls_x509_get_sig_alg( &crt->sig_oid, &sig_params1,
                                  &crt->sig_md, &crt->sig_pk,
                                  &crt->sig_opts ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }




    crt->issuer_raw.p = p;

    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    if( ( ret = mbedtls_x509_get_name( &p, p + len, &crt->issuer ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }

    crt->issuer_raw.len = p - crt->issuer_raw.p;







    if( ( ret = x509_get_dates( &p, end, &crt->valid_from,
                                         &crt->valid_to ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }




    crt->subject_raw.p = p;

    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    if( len && ( ret = mbedtls_x509_get_name( &p, p + len, &crt->subject ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }

    crt->subject_raw.len = p - crt->subject_raw.p;




    if( ( ret = mbedtls_pk_parse_subpubkey( &p, end, &crt->pk ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }
    if( crt->version == 2 || crt->version == 3 )
    {
        ret = x509_get_uid( &p, end, &crt->issuer_id, 1 );
        if( ret != 0 )
        {
            mbedtls_x509_crt_free( crt );
            return( ret );
        }
    }

    if( crt->version == 2 || crt->version == 3 )
    {
        ret = x509_get_uid( &p, end, &crt->subject_id, 2 );
        if( ret != 0 )
        {
            mbedtls_x509_crt_free( crt );
            return( ret );
        }
    }


    if( crt->version == 3 )

    {
        ret = x509_get_crt_ext( &p, end, crt );
        if( ret != 0 )
        {
            mbedtls_x509_crt_free( crt );
            return( ret );
        }
    }

    if( p != end )
    {
        mbedtls_x509_crt_free( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    end = crt_end;
    if( ( ret = mbedtls_x509_get_alg( &p, end, &sig_oid2, &sig_params2 ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }

    if( crt->sig_oid.len != sig_oid2.len ||
        memcmp( crt->sig_oid.p, sig_oid2.p, crt->sig_oid.len ) != 0 ||
        sig_params1.len != sig_params2.len ||
        ( sig_params1.len != 0 &&
          memcmp( sig_params1.p, sig_params2.p, sig_params1.len ) != 0 ) )
    {
        mbedtls_x509_crt_free( crt );
        return( MBEDTLS_ERR_X509_SIG_MISMATCH );
    }

    if( ( ret = mbedtls_x509_get_sig( &p, end, &crt->sig ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }

    if( p != end )
    {
        mbedtls_x509_crt_free( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    return( 0 );
}

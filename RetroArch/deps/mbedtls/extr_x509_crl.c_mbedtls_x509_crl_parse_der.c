
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ len; int p; } ;
struct TYPE_14__ {unsigned char* p; size_t len; } ;
struct TYPE_16__ {unsigned char* p; int len; } ;
struct TYPE_15__ {unsigned char* p; int len; } ;
struct TYPE_17__ {int version; int sig; TYPE_5__ sig_oid; TYPE_1__ raw; int crl_ext; int entry; int next_update; int this_update; TYPE_3__ issuer_raw; int issuer; int sig_opts; int sig_pk; int sig_md; TYPE_2__ tbs; struct TYPE_17__* next; } ;
typedef TYPE_4__ mbedtls_x509_crl ;
typedef TYPE_5__ mbedtls_x509_buf ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ;
 int MBEDTLS_ERR_ASN1_OUT_OF_DATA ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int MBEDTLS_ERR_X509_ALLOC_FAILED ;
 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_X509_INVALID_DATE ;
 int MBEDTLS_ERR_X509_INVALID_FORMAT ;
 int MBEDTLS_ERR_X509_SIG_MISMATCH ;
 int MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG ;
 int MBEDTLS_ERR_X509_UNKNOWN_VERSION ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char*,size_t*,int) ;
 void* mbedtls_calloc (int,size_t) ;
 int mbedtls_x509_crl_free (TYPE_4__*) ;
 int mbedtls_x509_crl_init (TYPE_4__*) ;
 int mbedtls_x509_get_alg (unsigned char**,unsigned char*,TYPE_5__*,TYPE_5__*) ;
 int mbedtls_x509_get_name (unsigned char**,unsigned char*,int *) ;
 int mbedtls_x509_get_sig (unsigned char**,unsigned char*,int *) ;
 int mbedtls_x509_get_sig_alg (TYPE_5__*,TYPE_5__*,int *,int *,int *) ;
 int mbedtls_x509_get_time (unsigned char**,unsigned char*,int *) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (TYPE_5__*,int ,int) ;
 int x509_crl_get_version (unsigned char**,unsigned char*,int*) ;
 int x509_get_crl_ext (unsigned char**,unsigned char*,int *) ;
 int x509_get_entries (unsigned char**,unsigned char*,int *) ;

int mbedtls_x509_crl_parse_der( mbedtls_x509_crl *chain,
                        const unsigned char *buf, size_t buflen )
{
    int ret;
    size_t len;
    unsigned char *p, *end;
    mbedtls_x509_buf sig_params1, sig_params2, sig_oid2;
    mbedtls_x509_crl *crl = chain;




    if( crl == ((void*)0) || buf == ((void*)0) )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    memset( &sig_params1, 0, sizeof( mbedtls_x509_buf ) );
    memset( &sig_params2, 0, sizeof( mbedtls_x509_buf ) );
    memset( &sig_oid2, 0, sizeof( mbedtls_x509_buf ) );




    while( crl->version != 0 && crl->next != ((void*)0) )
        crl = crl->next;

    if( crl->version != 0 && crl->next == ((void*)0) )
    {
        crl->next = mbedtls_calloc( 1, sizeof( mbedtls_x509_crl ) );

        if( crl->next == ((void*)0) )
        {
            mbedtls_x509_crl_free( crl );
            return( MBEDTLS_ERR_X509_ALLOC_FAILED );
        }

        mbedtls_x509_crl_init( crl->next );
        crl = crl->next;
    }




    if( ( p = mbedtls_calloc( 1, buflen ) ) == ((void*)0) )
        return( MBEDTLS_ERR_X509_ALLOC_FAILED );

    memcpy( p, buf, buflen );

    crl->raw.p = p;
    crl->raw.len = buflen;

    end = p + buflen;







    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT );
    }

    if( len != (size_t) ( end - p ) )
    {
        mbedtls_x509_crl_free( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }




    crl->tbs.p = p;

    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    end = p + len;
    crl->tbs.len = end - crl->tbs.p;







    if( ( ret = x509_crl_get_version( &p, end, &crl->version ) ) != 0 ||
        ( ret = mbedtls_x509_get_alg( &p, end, &crl->sig_oid, &sig_params1 ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( ret );
    }

    crl->version++;

    if( crl->version > 2 )
    {
        mbedtls_x509_crl_free( crl );
        return( MBEDTLS_ERR_X509_UNKNOWN_VERSION );
    }

    if( ( ret = mbedtls_x509_get_sig_alg( &crl->sig_oid, &sig_params1,
                                  &crl->sig_md, &crl->sig_pk,
                                  &crl->sig_opts ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG );
    }




    crl->issuer_raw.p = p;

    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    if( ( ret = mbedtls_x509_get_name( &p, p + len, &crl->issuer ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( ret );
    }

    crl->issuer_raw.len = p - crl->issuer_raw.p;





    if( ( ret = mbedtls_x509_get_time( &p, end, &crl->this_update ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( ret );
    }

    if( ( ret = mbedtls_x509_get_time( &p, end, &crl->next_update ) ) != 0 )
    {
        if( ret != ( MBEDTLS_ERR_X509_INVALID_DATE +
                        MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ) &&
            ret != ( MBEDTLS_ERR_X509_INVALID_DATE +
                        MBEDTLS_ERR_ASN1_OUT_OF_DATA ) )
        {
            mbedtls_x509_crl_free( crl );
            return( ret );
        }
    }
    if( ( ret = x509_get_entries( &p, end, &crl->entry ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( ret );
    }





    if( crl->version == 2 )
    {
        ret = x509_get_crl_ext( &p, end, &crl->crl_ext );

        if( ret != 0 )
        {
            mbedtls_x509_crl_free( crl );
            return( ret );
        }
    }

    if( p != end )
    {
        mbedtls_x509_crl_free( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    end = crl->raw.p + crl->raw.len;





    if( ( ret = mbedtls_x509_get_alg( &p, end, &sig_oid2, &sig_params2 ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( ret );
    }

    if( crl->sig_oid.len != sig_oid2.len ||
        memcmp( crl->sig_oid.p, sig_oid2.p, crl->sig_oid.len ) != 0 ||
        sig_params1.len != sig_params2.len ||
        ( sig_params1.len != 0 &&
          memcmp( sig_params1.p, sig_params2.p, sig_params1.len ) != 0 ) )
    {
        mbedtls_x509_crl_free( crl );
        return( MBEDTLS_ERR_X509_SIG_MISMATCH );
    }

    if( ( ret = mbedtls_x509_get_sig( &p, end, &crl->sig ) ) != 0 )
    {
        mbedtls_x509_crl_free( crl );
        return( ret );
    }

    if( p != end )
    {
        mbedtls_x509_crl_free( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    return( 0 );
}

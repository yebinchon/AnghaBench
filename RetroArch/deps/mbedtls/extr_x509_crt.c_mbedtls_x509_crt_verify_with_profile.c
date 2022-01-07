
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef int uint32_t ;
struct TYPE_18__ {size_t len; char const* p; } ;
struct TYPE_19__ {struct TYPE_19__* next; TYPE_14__ buf; } ;
typedef TYPE_1__ mbedtls_x509_sequence ;
struct TYPE_20__ {struct TYPE_20__* next; TYPE_14__ val; int oid; } ;
typedef TYPE_2__ mbedtls_x509_name ;
typedef int mbedtls_x509_crt_profile ;
struct TYPE_21__ {int ext_types; struct TYPE_21__* next; int pk; TYPE_1__ subject_alt_names; TYPE_2__ subject; } ;
typedef TYPE_3__ mbedtls_x509_crt ;
typedef int mbedtls_x509_crl ;
typedef int mbedtls_pk_type_t ;


 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_X509_CERT_VERIFY_FAILED ;
 int MBEDTLS_OID_AT_CN ;
 scalar_t__ MBEDTLS_OID_CMP (int ,int *) ;
 int MBEDTLS_X509_BADCERT_BAD_KEY ;
 int MBEDTLS_X509_BADCERT_BAD_PK ;
 int MBEDTLS_X509_BADCERT_CN_MISMATCH ;
 int MBEDTLS_X509_EXT_SUBJECT_ALT_NAME ;
 int mbedtls_pk_get_type (int *) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 size_t strlen (char const*) ;
 scalar_t__ x509_check_wildcard (char const*,TYPE_14__*) ;
 scalar_t__ x509_crt_check_parent (TYPE_3__*,TYPE_3__*,int ,int) ;
 int x509_crt_verify_child (TYPE_3__*,TYPE_3__*,TYPE_3__*,int *,int const*,int,int,int *,int (*) (void*,TYPE_3__*,int,int *),void*) ;
 int x509_crt_verify_top (TYPE_3__*,TYPE_3__*,int *,int const*,int,int,int *,int (*) (void*,TYPE_3__*,int,int *),void*) ;
 scalar_t__ x509_memcasecmp (char const*,char const*,size_t) ;
 scalar_t__ x509_profile_check_key (int const*,int ,int *) ;
 scalar_t__ x509_profile_check_pk_alg (int const*,int ) ;

int mbedtls_x509_crt_verify_with_profile( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const mbedtls_x509_crt_profile *profile,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy )
{
    size_t cn_len;
    int ret;
    int pathlen = 0, selfsigned = 0;
    mbedtls_x509_crt *parent;
    mbedtls_x509_name *name;
    mbedtls_x509_sequence *cur = ((void*)0);
    mbedtls_pk_type_t pk_type;

    if( profile == ((void*)0) )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    *flags = 0;

    if( cn != ((void*)0) )
    {
        name = &crt->subject;
        cn_len = strlen( cn );

        if( crt->ext_types & MBEDTLS_X509_EXT_SUBJECT_ALT_NAME )
        {
            cur = &crt->subject_alt_names;

            while( cur != ((void*)0) )
            {
                if( cur->buf.len == cn_len &&
                    x509_memcasecmp( cn, cur->buf.p, cn_len ) == 0 )
                    break;

                if( cur->buf.len > 2 &&
                    memcmp( cur->buf.p, "*.", 2 ) == 0 &&
                    x509_check_wildcard( cn, &cur->buf ) == 0 )
                {
                    break;
                }

                cur = cur->next;
            }

            if( cur == ((void*)0) )
                *flags |= MBEDTLS_X509_BADCERT_CN_MISMATCH;
        }
        else
        {
            while( name != ((void*)0) )
            {
                if( MBEDTLS_OID_CMP( MBEDTLS_OID_AT_CN, &name->oid ) == 0 )
                {
                    if( name->val.len == cn_len &&
                        x509_memcasecmp( name->val.p, cn, cn_len ) == 0 )
                        break;

                    if( name->val.len > 2 &&
                        memcmp( name->val.p, "*.", 2 ) == 0 &&
                        x509_check_wildcard( cn, &name->val ) == 0 )
                        break;
                }

                name = name->next;
            }

            if( name == ((void*)0) )
                *flags |= MBEDTLS_X509_BADCERT_CN_MISMATCH;
        }
    }


    pk_type = mbedtls_pk_get_type( &crt->pk );

    if( x509_profile_check_pk_alg( profile, pk_type ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_PK;

    if( x509_profile_check_key( profile, pk_type, &crt->pk ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_KEY;


    for( parent = trust_ca; parent != ((void*)0); parent = parent->next )
    {
        if( x509_crt_check_parent( crt, parent, 0, pathlen == 0 ) == 0 )
            break;
    }

    if( parent != ((void*)0) )
    {
        ret = x509_crt_verify_top( crt, parent, ca_crl, profile,
                                   pathlen, selfsigned, flags, f_vrfy, p_vrfy );
        if( ret != 0 )
            return( ret );
    }
    else
    {

        for( parent = crt->next; parent != ((void*)0); parent = parent->next )
            if( x509_crt_check_parent( crt, parent, 0, pathlen == 0 ) == 0 )
                break;


        if( parent != ((void*)0) )
        {
            ret = x509_crt_verify_child( crt, parent, trust_ca, ca_crl, profile,
                                         pathlen, selfsigned, flags, f_vrfy, p_vrfy );
            if( ret != 0 )
                return( ret );
        }
        else
        {
            ret = x509_crt_verify_top( crt, trust_ca, ca_crl, profile,
                                       pathlen, selfsigned, flags, f_vrfy, p_vrfy );
            if( ret != 0 )
                return( ret );
        }
    }

    if( *flags != 0 )
        return( MBEDTLS_ERR_X509_CERT_VERIFY_FAILED );

    return( 0 );
}

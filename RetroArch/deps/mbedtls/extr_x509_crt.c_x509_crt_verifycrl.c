
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int mbedtls_x509_crt_profile ;
struct TYPE_13__ {scalar_t__ len; int p; } ;
struct TYPE_17__ {int pk; TYPE_1__ subject_raw; } ;
typedef TYPE_5__ mbedtls_x509_crt ;
struct TYPE_16__ {int len; int p; } ;
struct TYPE_15__ {int len; int p; } ;
struct TYPE_14__ {scalar_t__ len; int p; } ;
struct TYPE_18__ {scalar_t__ version; struct TYPE_18__* next; int this_update; int next_update; TYPE_4__ sig; int sig_md; int sig_opts; int sig_pk; TYPE_3__ tbs; TYPE_2__ issuer_raw; } ;
typedef TYPE_6__ mbedtls_x509_crl ;
typedef int mbedtls_md_info_t ;


 int MBEDTLS_MD_MAX_SIZE ;
 int MBEDTLS_X509_BADCERT_BAD_KEY ;
 int MBEDTLS_X509_BADCERT_REVOKED ;
 int MBEDTLS_X509_BADCRL_BAD_MD ;
 int MBEDTLS_X509_BADCRL_BAD_PK ;
 int MBEDTLS_X509_BADCRL_EXPIRED ;
 int MBEDTLS_X509_BADCRL_FUTURE ;
 int MBEDTLS_X509_BADCRL_NOT_TRUSTED ;
 int MBEDTLS_X509_KU_CRL_SIGN ;
 int mbedtls_md (int const*,int ,int ,unsigned char*) ;
 int mbedtls_md_get_size (int const*) ;
 int * mbedtls_md_info_from_type (int ) ;
 scalar_t__ mbedtls_pk_verify_ext (int ,int ,int *,int ,unsigned char*,int ,int ,int ) ;
 scalar_t__ mbedtls_x509_crt_check_key_usage (TYPE_5__*,int ) ;
 scalar_t__ mbedtls_x509_crt_is_revoked (TYPE_5__*,TYPE_6__*) ;
 scalar_t__ mbedtls_x509_time_is_future (int *) ;
 scalar_t__ mbedtls_x509_time_is_past (int *) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 scalar_t__ x509_profile_check_key (int const*,int ,int *) ;
 scalar_t__ x509_profile_check_md_alg (int const*,int ) ;
 scalar_t__ x509_profile_check_pk_alg (int const*,int ) ;

__attribute__((used)) static int x509_crt_verifycrl( mbedtls_x509_crt *crt, mbedtls_x509_crt *ca,
                               mbedtls_x509_crl *crl_list,
                               const mbedtls_x509_crt_profile *profile )
{
    int flags = 0;
    unsigned char hash[MBEDTLS_MD_MAX_SIZE];
    const mbedtls_md_info_t *md_info;

    if( ca == ((void*)0) )
        return( flags );

    while( crl_list != ((void*)0) )
    {
        if( crl_list->version == 0 ||
            crl_list->issuer_raw.len != ca->subject_raw.len ||
            memcmp( crl_list->issuer_raw.p, ca->subject_raw.p,
                    crl_list->issuer_raw.len ) != 0 )
        {
            crl_list = crl_list->next;
            continue;
        }
        if( x509_profile_check_md_alg( profile, crl_list->sig_md ) != 0 )
            flags |= MBEDTLS_X509_BADCRL_BAD_MD;

        if( x509_profile_check_pk_alg( profile, crl_list->sig_pk ) != 0 )
            flags |= MBEDTLS_X509_BADCRL_BAD_PK;

        md_info = mbedtls_md_info_from_type( crl_list->sig_md );
        if( md_info == ((void*)0) )
        {



            flags |= MBEDTLS_X509_BADCRL_NOT_TRUSTED;
            break;
        }

        mbedtls_md( md_info, crl_list->tbs.p, crl_list->tbs.len, hash );

        if( x509_profile_check_key( profile, crl_list->sig_pk, &ca->pk ) != 0 )
            flags |= MBEDTLS_X509_BADCERT_BAD_KEY;

        if( mbedtls_pk_verify_ext( crl_list->sig_pk, crl_list->sig_opts, &ca->pk,
                           crl_list->sig_md, hash, mbedtls_md_get_size( md_info ),
                           crl_list->sig.p, crl_list->sig.len ) != 0 )
        {
            flags |= MBEDTLS_X509_BADCRL_NOT_TRUSTED;
            break;
        }




        if( mbedtls_x509_time_is_past( &crl_list->next_update ) )
            flags |= MBEDTLS_X509_BADCRL_EXPIRED;

        if( mbedtls_x509_time_is_future( &crl_list->this_update ) )
            flags |= MBEDTLS_X509_BADCRL_FUTURE;




        if( mbedtls_x509_crt_is_revoked( crt, crl_list ) )
        {
            flags |= MBEDTLS_X509_BADCERT_REVOKED;
            break;
        }

        crl_list = crl_list->next;
    }

    return( flags );
}

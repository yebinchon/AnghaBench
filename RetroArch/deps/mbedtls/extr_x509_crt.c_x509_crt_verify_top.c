
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mbedtls_x509_crt_profile ;
struct TYPE_17__ {int len; } ;
struct TYPE_16__ {scalar_t__ len; int p; } ;
struct TYPE_15__ {int len; int p; } ;
struct TYPE_14__ {int len; int p; } ;
struct TYPE_18__ {int max_pathlen; int valid_from; int valid_to; TYPE_4__ issuer_raw; TYPE_3__ subject_raw; int pk; int sig_pk; TYPE_2__ sig; int sig_md; int sig_opts; struct TYPE_18__* next; TYPE_1__ tbs; } ;
typedef TYPE_5__ mbedtls_x509_crt ;
typedef int mbedtls_x509_crl ;
typedef int mbedtls_md_info_t ;


 int MBEDTLS_MD_MAX_SIZE ;
 int MBEDTLS_X509_BADCERT_BAD_KEY ;
 int MBEDTLS_X509_BADCERT_BAD_MD ;
 int MBEDTLS_X509_BADCERT_BAD_PK ;
 int MBEDTLS_X509_BADCERT_EXPIRED ;
 int MBEDTLS_X509_BADCERT_FUTURE ;
 int MBEDTLS_X509_BADCERT_NOT_TRUSTED ;
 int mbedtls_md (int const*,int ,int ,unsigned char*) ;
 int mbedtls_md_get_size (int const*) ;
 int * mbedtls_md_info_from_type (int ) ;
 scalar_t__ mbedtls_pk_verify_ext (int ,int ,int *,int ,unsigned char*,int ,int ,int ) ;
 scalar_t__ mbedtls_x509_time_is_future (int *) ;
 scalar_t__ mbedtls_x509_time_is_past (int *) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ x509_crt_check_parent (TYPE_5__*,TYPE_5__*,int,int) ;
 int x509_crt_verifycrl (TYPE_5__*,TYPE_5__*,int *,int const*) ;
 scalar_t__ x509_profile_check_key (int const*,int ,int *) ;
 scalar_t__ x509_profile_check_md_alg (int const*,int ) ;
 scalar_t__ x509_profile_check_pk_alg (int const*,int ) ;

__attribute__((used)) static int x509_crt_verify_top(
                mbedtls_x509_crt *child, mbedtls_x509_crt *trust_ca,
                mbedtls_x509_crl *ca_crl,
                const mbedtls_x509_crt_profile *profile,
                int path_cnt, int self_cnt, uint32_t *flags,
                int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                void *p_vrfy )
{
    int ret;
    uint32_t ca_flags = 0;
    int check_path_cnt;
    unsigned char hash[MBEDTLS_MD_MAX_SIZE];
    const mbedtls_md_info_t *md_info;
    mbedtls_x509_crt *future_past_ca = ((void*)0);

    if( mbedtls_x509_time_is_past( &child->valid_to ) )
        *flags |= MBEDTLS_X509_BADCERT_EXPIRED;

    if( mbedtls_x509_time_is_future( &child->valid_from ) )
        *flags |= MBEDTLS_X509_BADCERT_FUTURE;

    if( x509_profile_check_md_alg( profile, child->sig_md ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_MD;

    if( x509_profile_check_pk_alg( profile, child->sig_pk ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_PK;




    *flags |= MBEDTLS_X509_BADCERT_NOT_TRUSTED;

    md_info = mbedtls_md_info_from_type( child->sig_md );
    if( md_info == ((void*)0) )
    {



        trust_ca = ((void*)0);
    }
    else
        mbedtls_md( md_info, child->tbs.p, child->tbs.len, hash );

    for( ; trust_ca != ((void*)0); trust_ca = trust_ca->next )
    {
        if( x509_crt_check_parent( child, trust_ca, 1, path_cnt == 0 ) != 0 )
            continue;

        check_path_cnt = path_cnt + 1;





        if( child->subject_raw.len == trust_ca->subject_raw.len &&
            memcmp( child->subject_raw.p, trust_ca->subject_raw.p,
                            child->issuer_raw.len ) == 0 )
        {
            check_path_cnt--;
        }


        if( trust_ca->max_pathlen > 0 &&
            trust_ca->max_pathlen < check_path_cnt - self_cnt )
        {
            continue;
        }

        if( mbedtls_pk_verify_ext( child->sig_pk, child->sig_opts, &trust_ca->pk,
                           child->sig_md, hash, mbedtls_md_get_size( md_info ),
                           child->sig.p, child->sig.len ) != 0 )
        {
            continue;
        }

        if( mbedtls_x509_time_is_past( &trust_ca->valid_to ) ||
            mbedtls_x509_time_is_future( &trust_ca->valid_from ) )
        {
            if ( future_past_ca == ((void*)0) )
                future_past_ca = trust_ca;

            continue;
        }

        break;
    }

    if( trust_ca != ((void*)0) || ( trust_ca = future_past_ca ) != ((void*)0) )
    {



        *flags &= ~MBEDTLS_X509_BADCERT_NOT_TRUSTED;

        if( x509_profile_check_key( profile, child->sig_pk, &trust_ca->pk ) != 0 )
            *flags |= MBEDTLS_X509_BADCERT_BAD_KEY;
    }






    if( trust_ca != ((void*)0) &&
        ( child->subject_raw.len != trust_ca->subject_raw.len ||
          memcmp( child->subject_raw.p, trust_ca->subject_raw.p,
                            child->issuer_raw.len ) != 0 ) )
    {




        ((void) ca_crl);


        if( mbedtls_x509_time_is_past( &trust_ca->valid_to ) )
            ca_flags |= MBEDTLS_X509_BADCERT_EXPIRED;

        if( mbedtls_x509_time_is_future( &trust_ca->valid_from ) )
            ca_flags |= MBEDTLS_X509_BADCERT_FUTURE;

        if( ((void*)0) != f_vrfy )
        {
            if( ( ret = f_vrfy( p_vrfy, trust_ca, path_cnt + 1,
                                &ca_flags ) ) != 0 )
            {
                return( ret );
            }
        }
    }


    if( ((void*)0) != f_vrfy )
    {
        if( ( ret = f_vrfy( p_vrfy, child, path_cnt, flags ) ) != 0 )
            return( ret );
    }

    *flags |= ca_flags;

    return( 0 );
}

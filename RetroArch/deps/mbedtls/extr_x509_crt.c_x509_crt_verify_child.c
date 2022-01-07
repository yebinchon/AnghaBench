
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mbedtls_x509_crt_profile ;
struct TYPE_17__ {int len; int p; } ;
struct TYPE_16__ {int len; int p; } ;
struct TYPE_18__ {int max_pathlen; struct TYPE_18__* next; TYPE_2__ sig; int sig_md; int pk; int sig_opts; int sig_pk; TYPE_1__ tbs; int valid_from; int valid_to; int subject; int issuer; } ;
typedef TYPE_3__ mbedtls_x509_crt ;
typedef int mbedtls_x509_crl ;
typedef int mbedtls_md_info_t ;


 int MBEDTLS_ERR_X509_CERT_VERIFY_FAILED ;
 int MBEDTLS_MD_MAX_SIZE ;
 int MBEDTLS_X509_BADCERT_BAD_KEY ;
 int MBEDTLS_X509_BADCERT_BAD_MD ;
 int MBEDTLS_X509_BADCERT_BAD_PK ;
 int MBEDTLS_X509_BADCERT_EXPIRED ;
 int MBEDTLS_X509_BADCERT_FUTURE ;
 int MBEDTLS_X509_BADCERT_NOT_TRUSTED ;
 int MBEDTLS_X509_MAX_INTERMEDIATE_CA ;
 int mbedtls_md (int const*,int ,int ,unsigned char*) ;
 int mbedtls_md_get_size (int const*) ;
 int * mbedtls_md_info_from_type (int ) ;
 scalar_t__ mbedtls_pk_verify_ext (int ,int ,int *,int ,unsigned char*,int ,int ,int ) ;
 scalar_t__ mbedtls_x509_time_is_future (int *) ;
 scalar_t__ mbedtls_x509_time_is_past (int *) ;
 scalar_t__ x509_crt_check_parent (TYPE_3__*,TYPE_3__*,int ,int) ;
 int x509_crt_verify_top (TYPE_3__*,TYPE_3__*,int *,int const*,int,int,int *,int (*) (void*,TYPE_3__*,int,int *),void*) ;
 int x509_crt_verifycrl (TYPE_3__*,TYPE_3__*,int *,int const*) ;
 scalar_t__ x509_name_cmp (int *,int *) ;
 scalar_t__ x509_profile_check_key (int const*,int ,int *) ;
 scalar_t__ x509_profile_check_md_alg (int const*,int ) ;
 scalar_t__ x509_profile_check_pk_alg (int const*,int ) ;

__attribute__((used)) static int x509_crt_verify_child(
                mbedtls_x509_crt *child, mbedtls_x509_crt *parent,
                mbedtls_x509_crt *trust_ca, mbedtls_x509_crl *ca_crl,
                const mbedtls_x509_crt_profile *profile,
                int path_cnt, int self_cnt, uint32_t *flags,
                int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                void *p_vrfy )
{
    int ret;
    uint32_t parent_flags = 0;
    unsigned char hash[MBEDTLS_MD_MAX_SIZE];
    mbedtls_x509_crt *grandparent;
    const mbedtls_md_info_t *md_info;


    if( ( path_cnt != 0 ) && x509_name_cmp( &child->issuer, &child->subject ) == 0 )
        self_cnt++;


    if( 1 + path_cnt > MBEDTLS_X509_MAX_INTERMEDIATE_CA )
    {
        *flags |= MBEDTLS_X509_BADCERT_NOT_TRUSTED;
        return( MBEDTLS_ERR_X509_CERT_VERIFY_FAILED );
    }

    if( mbedtls_x509_time_is_past( &child->valid_to ) )
        *flags |= MBEDTLS_X509_BADCERT_EXPIRED;

    if( mbedtls_x509_time_is_future( &child->valid_from ) )
        *flags |= MBEDTLS_X509_BADCERT_FUTURE;

    if( x509_profile_check_md_alg( profile, child->sig_md ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_MD;

    if( x509_profile_check_pk_alg( profile, child->sig_pk ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_PK;

    md_info = mbedtls_md_info_from_type( child->sig_md );
    if( md_info == ((void*)0) )
    {



        *flags |= MBEDTLS_X509_BADCERT_NOT_TRUSTED;
    }
    else
    {
        mbedtls_md( md_info, child->tbs.p, child->tbs.len, hash );

        if( x509_profile_check_key( profile, child->sig_pk, &parent->pk ) != 0 )
            *flags |= MBEDTLS_X509_BADCERT_BAD_KEY;

        if( mbedtls_pk_verify_ext( child->sig_pk, child->sig_opts, &parent->pk,
                           child->sig_md, hash, mbedtls_md_get_size( md_info ),
                           child->sig.p, child->sig.len ) != 0 )
        {
            *flags |= MBEDTLS_X509_BADCERT_NOT_TRUSTED;
        }
    }







    for( grandparent = trust_ca;
         grandparent != ((void*)0);
         grandparent = grandparent->next )
    {
        if( x509_crt_check_parent( parent, grandparent,
                                   0, path_cnt == 0 ) == 0 )
            break;
    }

    if( grandparent != ((void*)0) )
    {
        ret = x509_crt_verify_top( parent, grandparent, ca_crl, profile,
                                path_cnt + 1, self_cnt, &parent_flags, f_vrfy, p_vrfy );
        if( ret != 0 )
            return( ret );
    }
    else
    {

        for( grandparent = parent->next;
             grandparent != ((void*)0);
             grandparent = grandparent->next )
        {



            if( grandparent->max_pathlen > 0 &&
                grandparent->max_pathlen < 2 + path_cnt - self_cnt )
            {
                continue;
            }

            if( x509_crt_check_parent( parent, grandparent,
                                       0, path_cnt == 0 ) == 0 )
                break;
        }


        if( grandparent != ((void*)0) )
        {
            ret = x509_crt_verify_child( parent, grandparent, trust_ca, ca_crl,
                                         profile, path_cnt + 1, self_cnt, &parent_flags,
                                         f_vrfy, p_vrfy );
            if( ret != 0 )
                return( ret );
        }
        else
        {
            ret = x509_crt_verify_top( parent, trust_ca, ca_crl, profile,
                                       path_cnt + 1, self_cnt, &parent_flags,
                                       f_vrfy, p_vrfy );
            if( ret != 0 )
                return( ret );
        }
    }


    if( ((void*)0) != f_vrfy )
        if( ( ret = f_vrfy( p_vrfy, child, path_cnt, flags ) ) != 0 )
            return( ret );

    *flags |= parent_flags;

    return( 0 );
}

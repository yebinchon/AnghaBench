#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mbedtls_x509_crt_profile ;
struct TYPE_17__ {int /*<<< orphan*/  len; } ;
struct TYPE_16__ {scalar_t__ len; int /*<<< orphan*/  p; } ;
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct TYPE_14__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct TYPE_18__ {int max_pathlen; int /*<<< orphan*/  valid_from; int /*<<< orphan*/  valid_to; TYPE_4__ issuer_raw; TYPE_3__ subject_raw; int /*<<< orphan*/  pk; int /*<<< orphan*/  sig_pk; TYPE_2__ sig; int /*<<< orphan*/  sig_md; int /*<<< orphan*/  sig_opts; struct TYPE_18__* next; TYPE_1__ tbs; } ;
typedef  TYPE_5__ mbedtls_x509_crt ;
typedef  int /*<<< orphan*/  mbedtls_x509_crl ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;

/* Variables and functions */
 int MBEDTLS_MD_MAX_SIZE ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_BAD_KEY ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_BAD_MD ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_BAD_PK ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_EXPIRED ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_FUTURE ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_NOT_TRUSTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_5__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(
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
    mbedtls_x509_crt *future_past_ca = NULL;

    if( FUNC5( &child->valid_to ) )
        *flags |= MBEDTLS_X509_BADCERT_EXPIRED;

    if( FUNC4( &child->valid_from ) )
        *flags |= MBEDTLS_X509_BADCERT_FUTURE;

    if( FUNC10( profile, child->sig_md ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_MD;

    if( FUNC11( profile, child->sig_pk ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_PK;

    /*
     * Child is the top of the chain. Check against the trust_ca list.
     */
    *flags |= MBEDTLS_X509_BADCERT_NOT_TRUSTED;

    md_info = FUNC2( child->sig_md );
    if( md_info == NULL )
    {
        /*
         * Cannot check 'unknown', no need to try any CA
         */
        trust_ca = NULL;
    }
    else
        FUNC0( md_info, child->tbs.p, child->tbs.len, hash );

    for( /* trust_ca */ ; trust_ca != NULL; trust_ca = trust_ca->next )
    {
        if( FUNC7( child, trust_ca, 1, path_cnt == 0 ) != 0 )
            continue;

        check_path_cnt = path_cnt + 1;

        /*
         * Reduce check_path_cnt to check against if top of the chain is
         * the same as the trusted CA
         */
        if( child->subject_raw.len == trust_ca->subject_raw.len &&
            FUNC6( child->subject_raw.p, trust_ca->subject_raw.p,
                            child->issuer_raw.len ) == 0 )
        {
            check_path_cnt--;
        }

        /* Self signed certificates do not count towards the limit */
        if( trust_ca->max_pathlen > 0 &&
            trust_ca->max_pathlen < check_path_cnt - self_cnt )
        {
            continue;
        }

        if( FUNC3( child->sig_pk, child->sig_opts, &trust_ca->pk,
                           child->sig_md, hash, FUNC1( md_info ),
                           child->sig.p, child->sig.len ) != 0 )
        {
            continue;
        }

        if( FUNC5( &trust_ca->valid_to ) ||
            FUNC4( &trust_ca->valid_from ) )
        {
            if ( future_past_ca == NULL )
                future_past_ca = trust_ca;

            continue;
        }

        break;
    }

    if( trust_ca != NULL || ( trust_ca = future_past_ca ) != NULL )
    {
        /*
         * Top of chain is signed by a trusted CA
         */
        *flags &= ~MBEDTLS_X509_BADCERT_NOT_TRUSTED;

        if( FUNC9( profile, child->sig_pk, &trust_ca->pk ) != 0 )
            *flags |= MBEDTLS_X509_BADCERT_BAD_KEY;
    }

    /*
     * If top of chain is not the same as the trusted CA send a verify request
     * to the callback for any issues with validity and CRL presence for the
     * trusted CA certificate.
     */
    if( trust_ca != NULL &&
        ( child->subject_raw.len != trust_ca->subject_raw.len ||
          FUNC6( child->subject_raw.p, trust_ca->subject_raw.p,
                            child->issuer_raw.len ) != 0 ) )
    {
#if defined(MBEDTLS_X509_CRL_PARSE_C)
        /* Check trusted CA's CRL for the chain's top crt */
        *flags |= x509_crt_verifycrl( child, trust_ca, ca_crl, profile );
#else
        ((void) ca_crl);
#endif

        if( FUNC5( &trust_ca->valid_to ) )
            ca_flags |= MBEDTLS_X509_BADCERT_EXPIRED;

        if( FUNC4( &trust_ca->valid_from ) )
            ca_flags |= MBEDTLS_X509_BADCERT_FUTURE;

        if( NULL != f_vrfy )
        {
            if( ( ret = f_vrfy( p_vrfy, trust_ca, path_cnt + 1,
                                &ca_flags ) ) != 0 )
            {
                return( ret );
            }
        }
    }

    /* Call callback on top cert */
    if( NULL != f_vrfy )
    {
        if( ( ret = f_vrfy( p_vrfy, child, path_cnt, flags ) ) != 0 )
            return( ret );
    }

    *flags |= ca_flags;

    return( 0 );
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mbedtls_x509_crt_profile ;
struct TYPE_17__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct TYPE_16__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct TYPE_18__ {int max_pathlen; struct TYPE_18__* next; TYPE_2__ sig; int /*<<< orphan*/  sig_md; int /*<<< orphan*/  pk; int /*<<< orphan*/  sig_opts; int /*<<< orphan*/  sig_pk; TYPE_1__ tbs; int /*<<< orphan*/  valid_from; int /*<<< orphan*/  valid_to; int /*<<< orphan*/  subject; int /*<<< orphan*/  issuer; } ;
typedef  TYPE_3__ mbedtls_x509_crt ;
typedef  int /*<<< orphan*/  mbedtls_x509_crl ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;

/* Variables and functions */
 int MBEDTLS_ERR_X509_CERT_VERIFY_FAILED ; 
 int MBEDTLS_MD_MAX_SIZE ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_BAD_KEY ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_BAD_MD ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_BAD_PK ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_EXPIRED ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_FUTURE ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_NOT_TRUSTED ; 
 int MBEDTLS_X509_MAX_INTERMEDIATE_CA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *,int (*) (void*,TYPE_3__*,int,int /*<<< orphan*/ *),void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(
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

    /* Counting intermediate self signed certificates */
    if( ( path_cnt != 0 ) && FUNC9( &child->issuer, &child->subject ) == 0 )
        self_cnt++;

    /* path_cnt is 0 for the first intermediate CA */
    if( 1 + path_cnt > MBEDTLS_X509_MAX_INTERMEDIATE_CA )
    {
        *flags |= MBEDTLS_X509_BADCERT_NOT_TRUSTED;
        return( MBEDTLS_ERR_X509_CERT_VERIFY_FAILED );
    }

    if( FUNC5( &child->valid_to ) )
        *flags |= MBEDTLS_X509_BADCERT_EXPIRED;

    if( FUNC4( &child->valid_from ) )
        *flags |= MBEDTLS_X509_BADCERT_FUTURE;

    if( FUNC11( profile, child->sig_md ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_MD;

    if( FUNC12( profile, child->sig_pk ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_PK;

    md_info = FUNC2( child->sig_md );
    if( md_info == NULL )
    {
        /*
         * Cannot check 'unknown' hash
         */
        *flags |= MBEDTLS_X509_BADCERT_NOT_TRUSTED;
    }
    else
    {
        FUNC0( md_info, child->tbs.p, child->tbs.len, hash );

        if( FUNC10( profile, child->sig_pk, &parent->pk ) != 0 )
            *flags |= MBEDTLS_X509_BADCERT_BAD_KEY;

        if( FUNC3( child->sig_pk, child->sig_opts, &parent->pk,
                           child->sig_md, hash, FUNC1( md_info ),
                           child->sig.p, child->sig.len ) != 0 )
        {
            *flags |= MBEDTLS_X509_BADCERT_NOT_TRUSTED;
        }
    }

#if defined(MBEDTLS_X509_CRL_PARSE_C)
    /* Check trusted CA's CRL for the given crt */
    *flags |= x509_crt_verifycrl(child, parent, ca_crl, profile );
#endif

    /* Look for a grandparent in trusted CAs */
    for( grandparent = trust_ca;
         grandparent != NULL;
         grandparent = grandparent->next )
    {
        if( FUNC6( parent, grandparent,
                                   0, path_cnt == 0 ) == 0 )
            break;
    }

    if( grandparent != NULL )
    {
        ret = FUNC7( parent, grandparent, ca_crl, profile,
                                path_cnt + 1, self_cnt, &parent_flags, f_vrfy, p_vrfy );
        if( ret != 0 )
            return( ret );
    }
    else
    {
        /* Look for a grandparent upwards the chain */
        for( grandparent = parent->next;
             grandparent != NULL;
             grandparent = grandparent->next )
        {
            /* +2 because the current step is not yet accounted for
             * and because max_pathlen is one higher than it should be.
             * Also self signed certificates do not count to the limit. */
            if( grandparent->max_pathlen > 0 &&
                grandparent->max_pathlen < 2 + path_cnt - self_cnt )
            {
                continue;
            }

            if( FUNC6( parent, grandparent,
                                       0, path_cnt == 0 ) == 0 )
                break;
        }

        /* Is our parent part of the chain or at the top? */
        if( grandparent != NULL )
        {
            ret = FUNC13( parent, grandparent, trust_ca, ca_crl,
                                         profile, path_cnt + 1, self_cnt, &parent_flags,
                                         f_vrfy, p_vrfy );
            if( ret != 0 )
                return( ret );
        }
        else
        {
            ret = FUNC7( parent, trust_ca, ca_crl, profile,
                                       path_cnt + 1, self_cnt, &parent_flags,
                                       f_vrfy, p_vrfy );
            if( ret != 0 )
                return( ret );
        }
    }

    /* child is verified to be a child of the parent, call verify callback */
    if( NULL != f_vrfy )
        if( ( ret = f_vrfy( p_vrfy, child, path_cnt, flags ) ) != 0 )
            return( ret );

    *flags |= parent_flags;

    return( 0 );
}
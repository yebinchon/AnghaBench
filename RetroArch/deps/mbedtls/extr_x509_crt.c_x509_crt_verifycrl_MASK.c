#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_x509_crt_profile ;
struct TYPE_13__ {scalar_t__ len; int /*<<< orphan*/  p; } ;
struct TYPE_17__ {int /*<<< orphan*/  pk; TYPE_1__ subject_raw; } ;
typedef  TYPE_5__ mbedtls_x509_crt ;
struct TYPE_16__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/  p; } ;
struct TYPE_14__ {scalar_t__ len; int /*<<< orphan*/  p; } ;
struct TYPE_18__ {scalar_t__ version; struct TYPE_18__* next; int /*<<< orphan*/  this_update; int /*<<< orphan*/  next_update; TYPE_4__ sig; int /*<<< orphan*/  sig_md; int /*<<< orphan*/  sig_opts; int /*<<< orphan*/  sig_pk; TYPE_3__ tbs; TYPE_2__ issuer_raw; } ;
typedef  TYPE_6__ mbedtls_x509_crl ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;

/* Variables and functions */
 int MBEDTLS_MD_MAX_SIZE ; 
 int MBEDTLS_X509_BADCERT_BAD_KEY ; 
 int MBEDTLS_X509_BADCERT_REVOKED ; 
 int MBEDTLS_X509_BADCRL_BAD_MD ; 
 int MBEDTLS_X509_BADCRL_BAD_PK ; 
 int MBEDTLS_X509_BADCRL_EXPIRED ; 
 int MBEDTLS_X509_BADCRL_FUTURE ; 
 int MBEDTLS_X509_BADCRL_NOT_TRUSTED ; 
 int /*<<< orphan*/  MBEDTLS_X509_KU_CRL_SIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_5__*,TYPE_6__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12( mbedtls_x509_crt *crt, mbedtls_x509_crt *ca,
                               mbedtls_x509_crl *crl_list,
                               const mbedtls_x509_crt_profile *profile )
{
    int flags = 0;
    unsigned char hash[MBEDTLS_MD_MAX_SIZE];
    const mbedtls_md_info_t *md_info;

    if( ca == NULL )
        return( flags );

    while( crl_list != NULL )
    {
        if( crl_list->version == 0 ||
            crl_list->issuer_raw.len != ca->subject_raw.len ||
            FUNC8( crl_list->issuer_raw.p, ca->subject_raw.p,
                    crl_list->issuer_raw.len ) != 0 )
        {
            crl_list = crl_list->next;
            continue;
        }

        /*
         * Check if the CA is configured to sign CRLs
         */
#if defined(MBEDTLS_X509_CHECK_KEY_USAGE)
        if( mbedtls_x509_crt_check_key_usage( ca, MBEDTLS_X509_KU_CRL_SIGN ) != 0 )
        {
            flags |= MBEDTLS_X509_BADCRL_NOT_TRUSTED;
            break;
        }
#endif

        /*
         * Check if CRL is correctly signed by the trusted CA
         */
        if( FUNC10( profile, crl_list->sig_md ) != 0 )
            flags |= MBEDTLS_X509_BADCRL_BAD_MD;

        if( FUNC11( profile, crl_list->sig_pk ) != 0 )
            flags |= MBEDTLS_X509_BADCRL_BAD_PK;

        md_info = FUNC2( crl_list->sig_md );
        if( md_info == NULL )
        {
            /*
             * Cannot check 'unknown' hash
             */
            flags |= MBEDTLS_X509_BADCRL_NOT_TRUSTED;
            break;
        }

        FUNC0( md_info, crl_list->tbs.p, crl_list->tbs.len, hash );

        if( FUNC9( profile, crl_list->sig_pk, &ca->pk ) != 0 )
            flags |= MBEDTLS_X509_BADCERT_BAD_KEY;

        if( FUNC3( crl_list->sig_pk, crl_list->sig_opts, &ca->pk,
                           crl_list->sig_md, hash, FUNC1( md_info ),
                           crl_list->sig.p, crl_list->sig.len ) != 0 )
        {
            flags |= MBEDTLS_X509_BADCRL_NOT_TRUSTED;
            break;
        }

        /*
         * Check for validity of CRL (Do not drop out)
         */
        if( FUNC7( &crl_list->next_update ) )
            flags |= MBEDTLS_X509_BADCRL_EXPIRED;

        if( FUNC6( &crl_list->this_update ) )
            flags |= MBEDTLS_X509_BADCRL_FUTURE;

        /*
         * Check if certificate is revoked
         */
        if( FUNC5( crt, crl_list ) )
        {
            flags |= MBEDTLS_X509_BADCERT_REVOKED;
            break;
        }

        crl_list = crl_list->next;
    }

    return( flags );
}
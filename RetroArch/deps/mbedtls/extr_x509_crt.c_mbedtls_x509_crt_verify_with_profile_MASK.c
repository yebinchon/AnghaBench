#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_18__ {size_t len; char const* p; } ;
struct TYPE_19__ {struct TYPE_19__* next; TYPE_14__ buf; } ;
typedef  TYPE_1__ mbedtls_x509_sequence ;
struct TYPE_20__ {struct TYPE_20__* next; TYPE_14__ val; int /*<<< orphan*/  oid; } ;
typedef  TYPE_2__ mbedtls_x509_name ;
typedef  int /*<<< orphan*/  mbedtls_x509_crt_profile ;
struct TYPE_21__ {int ext_types; struct TYPE_21__* next; int /*<<< orphan*/  pk; TYPE_1__ subject_alt_names; TYPE_2__ subject; } ;
typedef  TYPE_3__ mbedtls_x509_crt ;
typedef  int /*<<< orphan*/  mbedtls_x509_crl ;
typedef  int /*<<< orphan*/  mbedtls_pk_type_t ;

/* Variables and functions */
 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_X509_CERT_VERIFY_FAILED ; 
 int /*<<< orphan*/  MBEDTLS_OID_AT_CN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_BAD_KEY ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_BAD_PK ; 
 int /*<<< orphan*/  MBEDTLS_X509_BADCERT_CN_MISMATCH ; 
 int MBEDTLS_X509_EXT_SUBJECT_ALT_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,TYPE_14__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_3__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *,int (*) (void*,TYPE_3__*,int,int /*<<< orphan*/ *),void*) ; 
 int FUNC7 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *,int (*) (void*,TYPE_3__*,int,int /*<<< orphan*/ *),void*) ; 
 scalar_t__ FUNC8 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC11( mbedtls_x509_crt *crt,
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
    mbedtls_x509_sequence *cur = NULL;
    mbedtls_pk_type_t pk_type;

    if( profile == NULL )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    *flags = 0;

    if( cn != NULL )
    {
        name = &crt->subject;
        cn_len = FUNC3( cn );

        if( crt->ext_types & MBEDTLS_X509_EXT_SUBJECT_ALT_NAME )
        {
            cur = &crt->subject_alt_names;

            while( cur != NULL )
            {
                if( cur->buf.len == cn_len &&
                    FUNC8( cn, cur->buf.p, cn_len ) == 0 )
                    break;

                if( cur->buf.len > 2 &&
                    FUNC2( cur->buf.p, "*.", 2 ) == 0 &&
                    FUNC4( cn, &cur->buf ) == 0 )
                {
                    break;
                }

                cur = cur->next;
            }

            if( cur == NULL )
                *flags |= MBEDTLS_X509_BADCERT_CN_MISMATCH;
        }
        else
        {
            while( name != NULL )
            {
                if( FUNC0( MBEDTLS_OID_AT_CN, &name->oid ) == 0 )
                {
                    if( name->val.len == cn_len &&
                        FUNC8( name->val.p, cn, cn_len ) == 0 )
                        break;

                    if( name->val.len > 2 &&
                        FUNC2( name->val.p, "*.", 2 ) == 0 &&
                        FUNC4( cn, &name->val ) == 0 )
                        break;
                }

                name = name->next;
            }

            if( name == NULL )
                *flags |= MBEDTLS_X509_BADCERT_CN_MISMATCH;
        }
    }

    /* Check the type and size of the key */
    pk_type = FUNC1( &crt->pk );

    if( FUNC10( profile, pk_type ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_PK;

    if( FUNC9( profile, pk_type, &crt->pk ) != 0 )
        *flags |= MBEDTLS_X509_BADCERT_BAD_KEY;

    /* Look for a parent in trusted CAs */
    for( parent = trust_ca; parent != NULL; parent = parent->next )
    {
        if( FUNC5( crt, parent, 0, pathlen == 0 ) == 0 )
            break;
    }

    if( parent != NULL )
    {
        ret = FUNC7( crt, parent, ca_crl, profile,
                                   pathlen, selfsigned, flags, f_vrfy, p_vrfy );
        if( ret != 0 )
            return( ret );
    }
    else
    {
        /* Look for a parent upwards the chain */
        for( parent = crt->next; parent != NULL; parent = parent->next )
            if( FUNC5( crt, parent, 0, pathlen == 0 ) == 0 )
                break;

        /* Are we part of the chain or at the top? */
        if( parent != NULL )
        {
            ret = FUNC6( crt, parent, trust_ca, ca_crl, profile,
                                         pathlen, selfsigned, flags, f_vrfy, p_vrfy );
            if( ret != 0 )
                return( ret );
        }
        else
        {
            ret = FUNC7( crt, trust_ca, ca_crl, profile,
                                       pathlen, selfsigned, flags, f_vrfy, p_vrfy );
            if( ret != 0 )
                return( ret );
        }
    }

    if( *flags != 0 )
        return( MBEDTLS_ERR_X509_CERT_VERIFY_FAILED );

    return( 0 );
}
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
struct TYPE_18__ {scalar_t__ len; int /*<<< orphan*/  p; } ;
struct TYPE_14__ {unsigned char* p; size_t len; } ;
struct TYPE_16__ {unsigned char* p; int len; } ;
struct TYPE_15__ {unsigned char* p; int len; } ;
struct TYPE_17__ {int version; int /*<<< orphan*/  sig; TYPE_5__ sig_oid; TYPE_1__ raw; int /*<<< orphan*/  crl_ext; int /*<<< orphan*/  entry; int /*<<< orphan*/  next_update; int /*<<< orphan*/  this_update; TYPE_3__ issuer_raw; int /*<<< orphan*/  issuer; int /*<<< orphan*/  sig_opts; int /*<<< orphan*/  sig_pk; int /*<<< orphan*/  sig_md; TYPE_2__ tbs; struct TYPE_17__* next; } ;
typedef  TYPE_4__ mbedtls_x509_crl ;
typedef  TYPE_5__ mbedtls_x509_buf ;

/* Variables and functions */
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
 int FUNC0 (unsigned char**,unsigned char*,size_t*,int) ; 
 void* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (unsigned char**,unsigned char*,TYPE_5__*,TYPE_5__*) ; 
 int FUNC5 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (unsigned char**,unsigned char*,int*) ; 
 int FUNC13 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC14 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 

int FUNC15( mbedtls_x509_crl *chain,
                        const unsigned char *buf, size_t buflen )
{
    int ret;
    size_t len;
    unsigned char *p, *end;
    mbedtls_x509_buf sig_params1, sig_params2, sig_oid2;
    mbedtls_x509_crl *crl = chain;

    /*
     * Check for valid input
     */
    if( crl == NULL || buf == NULL )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    FUNC11( &sig_params1, 0, sizeof( mbedtls_x509_buf ) );
    FUNC11( &sig_params2, 0, sizeof( mbedtls_x509_buf ) );
    FUNC11( &sig_oid2, 0, sizeof( mbedtls_x509_buf ) );

    /*
     * Add new CRL on the end of the chain if needed.
     */
    while( crl->version != 0 && crl->next != NULL )
        crl = crl->next;

    if( crl->version != 0 && crl->next == NULL )
    {
        crl->next = FUNC1( 1, sizeof( mbedtls_x509_crl ) );

        if( crl->next == NULL )
        {
            FUNC2( crl );
            return( MBEDTLS_ERR_X509_ALLOC_FAILED );
        }

        FUNC3( crl->next );
        crl = crl->next;
    }

    /*
     * Copy raw DER-encoded CRL
     */
    if( ( p = FUNC1( 1, buflen ) ) == NULL )
        return( MBEDTLS_ERR_X509_ALLOC_FAILED );

    FUNC10( p, buf, buflen );

    crl->raw.p = p;
    crl->raw.len = buflen;

    end = p + buflen;

    /*
     * CertificateList  ::=  SEQUENCE  {
     *      tbsCertList          TBSCertList,
     *      signatureAlgorithm   AlgorithmIdentifier,
     *      signatureValue       BIT STRING  }
     */
    if( ( ret = FUNC0( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        FUNC2( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT );
    }

    if( len != (size_t) ( end - p ) )
    {
        FUNC2( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    /*
     * TBSCertList  ::=  SEQUENCE  {
     */
    crl->tbs.p = p;

    if( ( ret = FUNC0( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        FUNC2( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    end = p + len;
    crl->tbs.len = end - crl->tbs.p;

    /*
     * Version  ::=  INTEGER  OPTIONAL {  v1(0), v2(1)  }
     *               -- if present, MUST be v2
     *
     * signature            AlgorithmIdentifier
     */
    if( ( ret = FUNC12( &p, end, &crl->version ) ) != 0 ||
        ( ret = FUNC4( &p, end, &crl->sig_oid, &sig_params1 ) ) != 0 )
    {
        FUNC2( crl );
        return( ret );
    }

    crl->version++;

    if( crl->version > 2 )
    {
        FUNC2( crl );
        return( MBEDTLS_ERR_X509_UNKNOWN_VERSION );
    }

    if( ( ret = FUNC7( &crl->sig_oid, &sig_params1,
                                  &crl->sig_md, &crl->sig_pk,
                                  &crl->sig_opts ) ) != 0 )
    {
        FUNC2( crl );
        return( MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG );
    }

    /*
     * issuer               Name
     */
    crl->issuer_raw.p = p;

    if( ( ret = FUNC0( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        FUNC2( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    if( ( ret = FUNC5( &p, p + len, &crl->issuer ) ) != 0 )
    {
        FUNC2( crl );
        return( ret );
    }

    crl->issuer_raw.len = p - crl->issuer_raw.p;

    /*
     * thisUpdate          Time
     * nextUpdate          Time OPTIONAL
     */
    if( ( ret = FUNC8( &p, end, &crl->this_update ) ) != 0 )
    {
        FUNC2( crl );
        return( ret );
    }

    if( ( ret = FUNC8( &p, end, &crl->next_update ) ) != 0 )
    {
        if( ret != ( MBEDTLS_ERR_X509_INVALID_DATE +
                        MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ) &&
            ret != ( MBEDTLS_ERR_X509_INVALID_DATE +
                        MBEDTLS_ERR_ASN1_OUT_OF_DATA ) )
        {
            FUNC2( crl );
            return( ret );
        }
    }

    /*
     * revokedCertificates    SEQUENCE OF SEQUENCE   {
     *      userCertificate        CertificateSerialNumber,
     *      revocationDate         Time,
     *      crlEntryExtensions     Extensions OPTIONAL
     *                                   -- if present, MUST be v2
     *                        } OPTIONAL
     */
    if( ( ret = FUNC14( &p, end, &crl->entry ) ) != 0 )
    {
        FUNC2( crl );
        return( ret );
    }

    /*
     * crlExtensions          EXPLICIT Extensions OPTIONAL
     *                              -- if present, MUST be v2
     */
    if( crl->version == 2 )
    {
        ret = FUNC13( &p, end, &crl->crl_ext );

        if( ret != 0 )
        {
            FUNC2( crl );
            return( ret );
        }
    }

    if( p != end )
    {
        FUNC2( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    end = crl->raw.p + crl->raw.len;

    /*
     *  signatureAlgorithm   AlgorithmIdentifier,
     *  signatureValue       BIT STRING
     */
    if( ( ret = FUNC4( &p, end, &sig_oid2, &sig_params2 ) ) != 0 )
    {
        FUNC2( crl );
        return( ret );
    }

    if( crl->sig_oid.len != sig_oid2.len ||
        FUNC9( crl->sig_oid.p, sig_oid2.p, crl->sig_oid.len ) != 0 ||
        sig_params1.len != sig_params2.len ||
        ( sig_params1.len != 0 &&
          FUNC9( sig_params1.p, sig_params2.p, sig_params1.len ) != 0 ) )
    {
        FUNC2( crl );
        return( MBEDTLS_ERR_X509_SIG_MISMATCH );
    }

    if( ( ret = FUNC6( &p, end, &crl->sig ) ) != 0 )
    {
        FUNC2( crl );
        return( ret );
    }

    if( p != end )
    {
        FUNC2( crl );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    return( 0 );
}
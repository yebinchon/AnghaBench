#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ len; int /*<<< orphan*/  p; } ;
struct TYPE_15__ {unsigned char* p; int len; } ;
struct TYPE_18__ {unsigned char* p; int len; } ;
struct TYPE_17__ {unsigned char* p; int len; } ;
struct TYPE_16__ {int len; unsigned char* p; } ;
struct TYPE_19__ {int version; int /*<<< orphan*/  sig; TYPE_6__ sig_oid; int /*<<< orphan*/  subject_id; int /*<<< orphan*/  issuer_id; int /*<<< orphan*/  pk; TYPE_1__ subject_raw; int /*<<< orphan*/  subject; int /*<<< orphan*/  valid_to; int /*<<< orphan*/  valid_from; TYPE_4__ issuer_raw; int /*<<< orphan*/  issuer; int /*<<< orphan*/  sig_opts; int /*<<< orphan*/  sig_pk; int /*<<< orphan*/  sig_md; int /*<<< orphan*/  serial; TYPE_3__ tbs; TYPE_2__ raw; } ;
typedef  TYPE_5__ mbedtls_x509_crt ;
typedef  TYPE_6__ mbedtls_x509_buf ;

/* Variables and functions */
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ; 
 int MBEDTLS_ERR_X509_ALLOC_FAILED ; 
 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_X509_INVALID_FORMAT ; 
 int MBEDTLS_ERR_X509_SIG_MISMATCH ; 
 int MBEDTLS_ERR_X509_UNKNOWN_VERSION ; 
 int FUNC0 (unsigned char**,unsigned char*,size_t*,int) ; 
 unsigned char* FUNC1 (int,int) ; 
 int FUNC2 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (unsigned char**,unsigned char*,TYPE_6__*,TYPE_6__*) ; 
 int FUNC5 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_6__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (unsigned char**,unsigned char*,TYPE_5__*) ; 
 int FUNC13 (unsigned char**,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (unsigned char**,unsigned char*,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (unsigned char**,unsigned char*,int*) ; 

__attribute__((used)) static int FUNC16( mbedtls_x509_crt *crt, const unsigned char *buf,
                                    size_t buflen )
{
    int ret;
    size_t len;
    unsigned char *p, *end, *crt_end;
    mbedtls_x509_buf sig_params1, sig_params2, sig_oid2;

    FUNC11( &sig_params1, 0, sizeof( mbedtls_x509_buf ) );
    FUNC11( &sig_params2, 0, sizeof( mbedtls_x509_buf ) );
    FUNC11( &sig_oid2, 0, sizeof( mbedtls_x509_buf ) );

    /*
     * Check for valid input
     */
    if( crt == NULL || buf == NULL )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    /* Use the original buffer until we figure out actual length */
    p = (unsigned char*) buf;
    len = buflen;
    end = p + len;

    /*
     * Certificate  ::=  SEQUENCE  {
     *      tbsCertificate       TBSCertificate,
     *      signatureAlgorithm   AlgorithmIdentifier,
     *      signatureValue       BIT STRING  }
     */
    if( ( ret = FUNC0( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        FUNC3( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT );
    }

    if( len > (size_t) ( end - p ) )
    {
        FUNC3( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }
    crt_end = p + len;

    /* Create and populate a new buffer for the raw field */
    crt->raw.len = crt_end - buf;
    crt->raw.p = p = FUNC1( 1, crt->raw.len );
    if( p == NULL )
        return( MBEDTLS_ERR_X509_ALLOC_FAILED );

    FUNC10( p, buf, crt->raw.len );

    /* Direct pointers to the new buffer */
    p += crt->raw.len - len;
    end = crt_end = p + len;

    /*
     * TBSCertificate  ::=  SEQUENCE  {
     */
    crt->tbs.p = p;

    if( ( ret = FUNC0( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        FUNC3( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    end = p + len;
    crt->tbs.len = end - crt->tbs.p;

    /*
     * Version  ::=  INTEGER  {  v1(0), v2(1), v3(2)  }
     *
     * CertificateSerialNumber  ::=  INTEGER
     *
     * signature            AlgorithmIdentifier
     */
    if( ( ret = FUNC15(  &p, end, &crt->version  ) ) != 0 ||
        ( ret = FUNC6(   &p, end, &crt->serial   ) ) != 0 ||
        ( ret = FUNC4(      &p, end, &crt->sig_oid,
                                            &sig_params1 ) ) != 0 )
    {
        FUNC3( crt );
        return( ret );
    }

    crt->version++;

    if( crt->version > 3 )
    {
        FUNC3( crt );
        return( MBEDTLS_ERR_X509_UNKNOWN_VERSION );
    }

    if( ( ret = FUNC8( &crt->sig_oid, &sig_params1,
                                  &crt->sig_md, &crt->sig_pk,
                                  &crt->sig_opts ) ) != 0 )
    {
        FUNC3( crt );
        return( ret );
    }

    /*
     * issuer               Name
     */
    crt->issuer_raw.p = p;

    if( ( ret = FUNC0( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        FUNC3( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    if( ( ret = FUNC5( &p, p + len, &crt->issuer ) ) != 0 )
    {
        FUNC3( crt );
        return( ret );
    }

    crt->issuer_raw.len = p - crt->issuer_raw.p;

    /*
     * Validity ::= SEQUENCE {
     *      notBefore      Time,
     *      notAfter       Time }
     *
     */
    if( ( ret = FUNC13( &p, end, &crt->valid_from,
                                         &crt->valid_to ) ) != 0 )
    {
        FUNC3( crt );
        return( ret );
    }

    /*
     * subject              Name
     */
    crt->subject_raw.p = p;

    if( ( ret = FUNC0( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        FUNC3( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT + ret );
    }

    if( len && ( ret = FUNC5( &p, p + len, &crt->subject ) ) != 0 )
    {
        FUNC3( crt );
        return( ret );
    }

    crt->subject_raw.len = p - crt->subject_raw.p;

    /*
     * SubjectPublicKeyInfo
     */
    if( ( ret = FUNC2( &p, end, &crt->pk ) ) != 0 )
    {
        FUNC3( crt );
        return( ret );
    }

    /*
     *  issuerUniqueID  [1]  IMPLICIT UniqueIdentifier OPTIONAL,
     *                       -- If present, version shall be v2 or v3
     *  subjectUniqueID [2]  IMPLICIT UniqueIdentifier OPTIONAL,
     *                       -- If present, version shall be v2 or v3
     *  extensions      [3]  EXPLICIT Extensions OPTIONAL
     *                       -- If present, version shall be v3
     */
    if( crt->version == 2 || crt->version == 3 )
    {
        ret = FUNC14( &p, end, &crt->issuer_id,  1 );
        if( ret != 0 )
        {
            FUNC3( crt );
            return( ret );
        }
    }

    if( crt->version == 2 || crt->version == 3 )
    {
        ret = FUNC14( &p, end, &crt->subject_id,  2 );
        if( ret != 0 )
        {
            FUNC3( crt );
            return( ret );
        }
    }

#if !defined(MBEDTLS_X509_ALLOW_EXTENSIONS_NON_V3)
    if( crt->version == 3 )
#endif
    {
        ret = FUNC12( &p, end, crt );
        if( ret != 0 )
        {
            FUNC3( crt );
            return( ret );
        }
    }

    if( p != end )
    {
        FUNC3( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    end = crt_end;

    /*
     *  }
     *  -- end of TBSCertificate
     *
     *  signatureAlgorithm   AlgorithmIdentifier,
     *  signatureValue       BIT STRING
     */
    if( ( ret = FUNC4( &p, end, &sig_oid2, &sig_params2 ) ) != 0 )
    {
        FUNC3( crt );
        return( ret );
    }

    if( crt->sig_oid.len != sig_oid2.len ||
        FUNC9( crt->sig_oid.p, sig_oid2.p, crt->sig_oid.len ) != 0 ||
        sig_params1.len != sig_params2.len ||
        ( sig_params1.len != 0 &&
          FUNC9( sig_params1.p, sig_params2.p, sig_params1.len ) != 0 ) )
    {
        FUNC3( crt );
        return( MBEDTLS_ERR_X509_SIG_MISMATCH );
    }

    if( ( ret = FUNC7( &p, end, &crt->sig ) ) != 0 )
    {
        FUNC3( crt );
        return( ret );
    }

    if( p != end )
    {
        FUNC3( crt );
        return( MBEDTLS_ERR_X509_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    return( 0 );
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_buf ;
struct TYPE_3__ {int /*<<< orphan*/  md_alg; int /*<<< orphan*/  key; int /*<<< orphan*/  subject; int /*<<< orphan*/  extensions; } ;
typedef  TYPE_1__ mbedtls_x509write_csr ;
typedef  scalar_t__ mbedtls_pk_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_CONTEXT_SPECIFIC ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ASN1_SET ; 
 int MBEDTLS_ERR_ASN1_BUF_TOO_SMALL ; 
 int MBEDTLS_MPI_MAX_SIZE ; 
 int /*<<< orphan*/  MBEDTLS_OID_PKCS9_CSR_EXT_REQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MBEDTLS_PK_ECDSA ; 
 scalar_t__ MBEDTLS_PK_ECKEY ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char**,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,char const**,size_t*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,unsigned char*,size_t*,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char**,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char**,unsigned char*,char const*,size_t,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,unsigned char*,size_t) ; 

int FUNC16( mbedtls_x509write_csr *ctx, unsigned char *buf, size_t size,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng )
{
    int ret;
    const char *sig_oid;
    size_t sig_oid_len = 0;
    unsigned char *c, *c2;
    unsigned char hash[64];
    unsigned char sig[MBEDTLS_MPI_MAX_SIZE];
    unsigned char tmp_buf[2048];
    size_t pub_len = 0, sig_and_oid_len = 0, sig_len;
    size_t len = 0;
    mbedtls_pk_type_t pk_alg;

    /*
     * Prepare data to be signed in tmp_buf
     */
    c = tmp_buf + sizeof( tmp_buf );

    FUNC0( len, FUNC12( &c, tmp_buf, ctx->extensions ) );

    if( len )
    {
        FUNC0( len, FUNC3( &c, tmp_buf, len ) );
        FUNC0( len, FUNC5( &c, tmp_buf, MBEDTLS_ASN1_CONSTRUCTED |
                                                        MBEDTLS_ASN1_SEQUENCE ) );

        FUNC0( len, FUNC3( &c, tmp_buf, len ) );
        FUNC0( len, FUNC5( &c, tmp_buf, MBEDTLS_ASN1_CONSTRUCTED |
                                                        MBEDTLS_ASN1_SET ) );

        FUNC0( len, FUNC4( &c, tmp_buf, MBEDTLS_OID_PKCS9_CSR_EXT_REQ,
                                          FUNC1( MBEDTLS_OID_PKCS9_CSR_EXT_REQ ) ) );

        FUNC0( len, FUNC3( &c, tmp_buf, len ) );
        FUNC0( len, FUNC5( &c, tmp_buf, MBEDTLS_ASN1_CONSTRUCTED |
                                                        MBEDTLS_ASN1_SEQUENCE ) );
    }

    FUNC0( len, FUNC3( &c, tmp_buf, len ) );
    FUNC0( len, FUNC5( &c, tmp_buf, MBEDTLS_ASN1_CONSTRUCTED |
                                                    MBEDTLS_ASN1_CONTEXT_SPECIFIC ) );

    FUNC0( pub_len, FUNC11( ctx->key,
                                                tmp_buf, c - tmp_buf ) );
    c -= pub_len;
    len += pub_len;

    /*
     *  Subject  ::=  Name
     */
    FUNC0( len, FUNC13( &c, tmp_buf, ctx->subject ) );

    /*
     *  Version  ::=  INTEGER  {  v1(0), v2(1), v3(2)  }
     */
    FUNC0( len, FUNC2( &c, tmp_buf, 0 ) );

    FUNC0( len, FUNC3( &c, tmp_buf, len ) );
    FUNC0( len, FUNC5( &c, tmp_buf, MBEDTLS_ASN1_CONSTRUCTED |
                                                    MBEDTLS_ASN1_SEQUENCE ) );

    /*
     * Prepare signature
     */
    FUNC6( FUNC7( ctx->md_alg ), c, len, hash );

    pk_alg = FUNC9( ctx->key );
    if( pk_alg == MBEDTLS_PK_ECKEY )
        pk_alg = MBEDTLS_PK_ECDSA;

    if( ( ret = FUNC10( ctx->key, ctx->md_alg, hash, 0, sig, &sig_len,
                         f_rng, p_rng ) ) != 0 ||
        ( ret = FUNC8( pk_alg, ctx->md_alg,
                                        &sig_oid, &sig_oid_len ) ) != 0 )
    {
        return( ret );
    }

    /*
     * Write data to output buffer
     */
    c2 = buf + size;
    FUNC0( sig_and_oid_len, FUNC14( &c2, buf,
                                        sig_oid, sig_oid_len, sig, sig_len ) );

    if( len > (size_t)( c2 - buf ) )
        return( MBEDTLS_ERR_ASN1_BUF_TOO_SMALL );

    c2 -= len;
    FUNC15( c2, c, len );

    len += sig_and_oid_len;
    FUNC0( len, FUNC3( &c2, buf, len ) );
    FUNC0( len, FUNC5( &c2, buf, MBEDTLS_ASN1_CONSTRUCTED |
                                                 MBEDTLS_ASN1_SEQUENCE ) );

    return( (int) len );
}
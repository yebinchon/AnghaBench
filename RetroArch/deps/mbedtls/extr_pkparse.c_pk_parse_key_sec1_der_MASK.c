#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  G; } ;
struct TYPE_8__ {int /*<<< orphan*/  d; TYPE_2__ grp; int /*<<< orphan*/  Q; } ;
typedef  TYPE_1__ mbedtls_ecp_keypair ;
typedef  int /*<<< orphan*/  mbedtls_asn1_buf ;

/* Variables and functions */
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_CONTEXT_SPECIFIC ; 
 int MBEDTLS_ASN1_OCTET_STRING ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ; 
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ; 
 int MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ; 
 int MBEDTLS_ERR_PK_KEY_INVALID_FORMAT ; 
 int MBEDTLS_ERR_PK_KEY_INVALID_VERSION ; 
 int FUNC0 (unsigned char**,unsigned char*,size_t*) ; 
 int FUNC1 (unsigned char**,unsigned char*,int*) ; 
 int FUNC2 (unsigned char**,unsigned char*,size_t*,int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC7 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (unsigned char**,unsigned char*,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC10( mbedtls_ecp_keypair *eck,
                                  const unsigned char *key,
                                  size_t keylen )
{
    int ret;
    int version, pubkey_done;
    size_t len;
    mbedtls_asn1_buf params;
    unsigned char *p = (unsigned char *) key;
    unsigned char *end = p + keylen;
    unsigned char *end2;

    /*
     * RFC 5915, or SEC1 Appendix C.4
     *
     * ECPrivateKey ::= SEQUENCE {
     *      version        INTEGER { ecPrivkeyVer1(1) } (ecPrivkeyVer1),
     *      privateKey     OCTET STRING,
     *      parameters [0] ECParameters {{ NamedCurve }} OPTIONAL,
     *      publicKey  [1] BIT STRING OPTIONAL
     *    }
     */
    if( ( ret = FUNC2( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    end = p + len;

    if( ( ret = FUNC1( &p, end, &version ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    if( version != 1 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_VERSION );

    if( ( ret = FUNC2( &p, end, &len, MBEDTLS_ASN1_OCTET_STRING ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    if( ( ret = FUNC6( &eck->d, p, len ) ) != 0 )
    {
        FUNC4( eck );
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    p += len;

    pubkey_done = 0;
    if( p != end )
    {
        /*
         * Is 'parameters' present?
         */
        if( ( ret = FUNC2( &p, end, &len,
                        MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 0 ) ) == 0 )
        {
            if( ( ret = FUNC7( &p, p + len, &params) ) != 0 ||
                ( ret = FUNC9( &params, &eck->grp )  ) != 0 )
            {
                FUNC4( eck );
                return( ret );
            }
        }
        else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        {
            FUNC4( eck );
            return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
        }

        /*
         * Is 'publickey' present? If not, or if we can't read it (eg because it
         * is compressed), create it from the private key.
         */
        if( ( ret = FUNC2( &p, end, &len,
                        MBEDTLS_ASN1_CONTEXT_SPECIFIC | MBEDTLS_ASN1_CONSTRUCTED | 1 ) ) == 0 )
        {
            end2 = p + len;

            if( ( ret = FUNC0( &p, end2, &len ) ) != 0 )
                return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

            if( p + len != end2 )
                return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT +
                        MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );

            if( ( ret = FUNC8( &p, end2, eck ) ) == 0 )
                pubkey_done = 1;
            else
            {
                /*
                 * The only acceptable failure mode of pk_get_ecpubkey() above
                 * is if the point format is not recognized.
                 */
                if( ret != MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE )
                    return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT );
            }
        }
        else if( ret != MBEDTLS_ERR_ASN1_UNEXPECTED_TAG )
        {
            FUNC4( eck );
            return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
        }
    }

    if( ! pubkey_done &&
        ( ret = FUNC5( &eck->grp, &eck->Q, &eck->d, &eck->grp.G,
                                                      NULL, NULL ) ) != 0 )
    {
        FUNC4( eck );
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    if( ( ret = FUNC3( &eck->grp, &eck->d ) ) != 0 )
    {
        FUNC4( eck );
        return( ret );
    }

    return( 0 );
}
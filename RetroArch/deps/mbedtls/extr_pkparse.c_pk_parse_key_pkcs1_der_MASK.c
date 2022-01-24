#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  N; int /*<<< orphan*/  len; int /*<<< orphan*/  QP; int /*<<< orphan*/  DQ; int /*<<< orphan*/  DP; int /*<<< orphan*/  Q; int /*<<< orphan*/  P; int /*<<< orphan*/  D; int /*<<< orphan*/  E; int /*<<< orphan*/  ver; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;

/* Variables and functions */
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ERR_ASN1_LENGTH_MISMATCH ; 
 int MBEDTLS_ERR_PK_KEY_INVALID_FORMAT ; 
 int MBEDTLS_ERR_PK_KEY_INVALID_VERSION ; 
 int FUNC0 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned char**,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char**,unsigned char*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6( mbedtls_rsa_context *rsa,
                                   const unsigned char *key,
                                   size_t keylen )
{
    int ret;
    size_t len;
    unsigned char *p, *end;

    p = (unsigned char *) key;
    end = p + keylen;

    /*
     * This function parses the RSAPrivateKey (PKCS#1)
     *
     *  RSAPrivateKey ::= SEQUENCE {
     *      version           Version,
     *      modulus           INTEGER,  -- n
     *      publicExponent    INTEGER,  -- e
     *      privateExponent   INTEGER,  -- d
     *      prime1            INTEGER,  -- p
     *      prime2            INTEGER,  -- q
     *      exponent1         INTEGER,  -- d mod (p-1)
     *      exponent2         INTEGER,  -- d mod (q-1)
     *      coefficient       INTEGER,  -- (inverse of q) mod p
     *      otherPrimeInfos   OtherPrimeInfos OPTIONAL
     *  }
     */
    if( ( ret = FUNC2( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    end = p + len;

    if( ( ret = FUNC0( &p, end, &rsa->ver ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    if( rsa->ver != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_VERSION );
    }

    if( ( ret = FUNC1( &p, end, &rsa->N  ) ) != 0 ||
        ( ret = FUNC1( &p, end, &rsa->E  ) ) != 0 ||
        ( ret = FUNC1( &p, end, &rsa->D  ) ) != 0 ||
        ( ret = FUNC1( &p, end, &rsa->P  ) ) != 0 ||
        ( ret = FUNC1( &p, end, &rsa->Q  ) ) != 0 ||
        ( ret = FUNC1( &p, end, &rsa->DP ) ) != 0 ||
        ( ret = FUNC1( &p, end, &rsa->DQ ) ) != 0 ||
        ( ret = FUNC1( &p, end, &rsa->QP ) ) != 0 )
    {
        FUNC5( rsa );
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    rsa->len = FUNC3( &rsa->N );

    if( p != end )
    {
        FUNC5( rsa );
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_LENGTH_MISMATCH );
    }

    if( ( ret = FUNC4( rsa ) ) != 0 )
    {
        FUNC5( rsa );
        return( ret );
    }

    return( 0 );
}
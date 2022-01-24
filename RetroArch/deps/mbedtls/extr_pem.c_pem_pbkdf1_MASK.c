#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_md5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static void FUNC7( unsigned char *key, size_t keylen,
                        unsigned char *iv,
                        const unsigned char *pwd, size_t pwdlen )
{
    mbedtls_md5_context md5_ctx;
    unsigned char md5sum[16];
    size_t use_len;

    FUNC2( &md5_ctx );

    /*
     * key[ 0..15] = MD5(pwd || IV)
     */
    FUNC3( &md5_ctx );
    FUNC4( &md5_ctx, pwd, pwdlen );
    FUNC4( &md5_ctx, iv,  8 );
    FUNC0( &md5_ctx, md5sum );

    if( keylen <= 16 )
    {
        FUNC6( key, md5sum, keylen );

        FUNC1( &md5_ctx );
        FUNC5( md5sum, 16 );
        return;
    }

    FUNC6( key, md5sum, 16 );

    /*
     * key[16..23] = MD5(key[ 0..15] || pwd || IV])
     */
    FUNC3( &md5_ctx );
    FUNC4( &md5_ctx, md5sum,  16 );
    FUNC4( &md5_ctx, pwd, pwdlen );
    FUNC4( &md5_ctx, iv,  8 );
    FUNC0( &md5_ctx, md5sum );

    use_len = 16;
    if( keylen < 32 )
        use_len = keylen - 16;

    FUNC6( key + 16, md5sum, use_len );

    FUNC1( &md5_ctx );
    FUNC5( md5sum, 16 );
}
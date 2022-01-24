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
typedef  int /*<<< orphan*/  mbedtls_des3_context ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_DES_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,unsigned char*,unsigned char const*,size_t) ; 

__attribute__((used)) static void FUNC6( unsigned char des3_iv[8],
                               unsigned char *buf, size_t buflen,
                               const unsigned char *pwd, size_t pwdlen )
{
    mbedtls_des3_context des3_ctx;
    unsigned char des3_key[24];

    FUNC2( &des3_ctx );

    FUNC5( des3_key, 24, des3_iv, pwd, pwdlen );

    FUNC3( &des3_ctx, des3_key );
    FUNC0( &des3_ctx, MBEDTLS_DES_DECRYPT, buflen,
                     des3_iv, buf, buf );

    FUNC1( &des3_ctx );
    FUNC4( des3_key, 24 );
}
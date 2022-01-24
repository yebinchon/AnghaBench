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
typedef  int /*<<< orphan*/  mbedtls_sha512_context ;
typedef  int /*<<< orphan*/  mbedtls_sha256_context ;
typedef  int /*<<< orphan*/  mbedtls_sha1_context ;
typedef  scalar_t__ esp_sha_type ;

/* Variables and functions */
 scalar_t__ SHA1 ; 
 scalar_t__ SHA2_256 ; 
 scalar_t__ SHA2_384 ; 
 scalar_t__ SHA2_512 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

void FUNC15(esp_sha_type sha_type, const unsigned char *input, size_t ilen, unsigned char *output)
{
    int ret;
    FUNC0(input != NULL && output != NULL);

    if (sha_type == SHA1) {

        mbedtls_sha1_context *ctx1 = (mbedtls_sha1_context *)FUNC2(sizeof(mbedtls_sha1_context));
        FUNC0(ctx1 != NULL);
        FUNC5(ctx1);
        ret = FUNC6(ctx1, input, ilen);
        FUNC0(ret == 0);
        ret = FUNC3(ctx1, output);
        FUNC0(ret == 0);
        FUNC4(ctx1);
        FUNC1(ctx1);

    } else if (sha_type == SHA2_256) {

        mbedtls_sha256_context *ctx256 = (mbedtls_sha256_context *)FUNC2(sizeof(mbedtls_sha256_context));
        FUNC0(ctx256 != NULL);
        FUNC9(ctx256, 0);
        ret = FUNC10(ctx256, input, ilen);
        FUNC0(ret == 0);
        ret = FUNC7(ctx256, output);
        FUNC0(ret == 0);
        FUNC8(ctx256);
        FUNC1(ctx256);

    } else if (sha_type == SHA2_384) {

        mbedtls_sha512_context *ctx384 = (mbedtls_sha512_context *)FUNC2(sizeof(mbedtls_sha512_context));
        FUNC0(ctx384 != NULL);
        FUNC13(ctx384, 1);
        ret = FUNC14(ctx384, input, ilen);
        FUNC0(ret == 0);
        ret = FUNC11(ctx384, output);
        FUNC0(ret == 0);
        FUNC12(ctx384);
        FUNC1(ctx384);

    } else if (sha_type == SHA2_512) {

        mbedtls_sha512_context *ctx512 = (mbedtls_sha512_context *)FUNC2(sizeof(mbedtls_sha512_context));
        FUNC0(ctx512 != NULL);
        FUNC13(ctx512, 0);
        ret = FUNC14(ctx512, input, ilen);
        FUNC0(ret == 0);
        ret = FUNC11(ctx512, output);
        FUNC0(ret == 0);
        FUNC12(ctx512);
        FUNC1(ctx512);

    }

}
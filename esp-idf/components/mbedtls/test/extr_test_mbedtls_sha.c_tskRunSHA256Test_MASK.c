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
typedef  int /*<<< orphan*/  mbedtls_sha256_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int,char*) ; 
 int /*<<< orphan*/  done_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ one_hundred_bs ; 
 int /*<<< orphan*/  sha256_thousand_bs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *pvParameters)
{
    mbedtls_sha256_context sha256_ctx;
    unsigned char sha256[32];

    for (int i = 0; i < 1000; i++) {
        FUNC3(&sha256_ctx);
        FUNC0(0, FUNC4(&sha256_ctx, false));
        for (int j = 0; j < 10; j++) {
            FUNC0(0, FUNC5(&sha256_ctx, (unsigned char *)one_hundred_bs, 100));
        }
        FUNC0(0, FUNC2(&sha256_ctx, sha256));

        FUNC1(sha256_thousand_bs, sha256, 32, "SHA256 calculation");
    }
    FUNC7(done_sem);
    FUNC6(NULL);
}
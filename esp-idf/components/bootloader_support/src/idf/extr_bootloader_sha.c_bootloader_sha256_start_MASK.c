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
typedef  int /*<<< orphan*/ * bootloader_sha256_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

bootloader_sha256_handle_t FUNC3(void)
{
    mbedtls_sha256_context *ctx = (mbedtls_sha256_context *)FUNC0(sizeof(mbedtls_sha256_context));
    if (!ctx) {
        return NULL;
    }
    FUNC1(ctx);
    int ret = FUNC2(ctx, false);
    if (ret != 0) {
        return NULL;
    }
    return ctx;
}
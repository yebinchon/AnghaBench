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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mbedtls_sha256_context ;
typedef  int /*<<< orphan*/ * bootloader_sha256_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(bootloader_sha256_handle_t handle, uint8_t *digest)
{
    FUNC0(handle != NULL);
    mbedtls_sha256_context *ctx = (mbedtls_sha256_context *)handle;
    if (digest != NULL) {
        int ret = FUNC2(ctx, digest);
        FUNC0(ret == 0);
    }
    FUNC3(ctx);
    FUNC1(handle);
}
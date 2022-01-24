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
typedef  int /*<<< orphan*/  xSemaphoreHandle ;
typedef  int /*<<< orphan*/  output ;
typedef  int /*<<< orphan*/  mbedtls_sha256_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int,char*) ; 
 int exit_flag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    FUNC0(TAG, "mbedtls_sha256_task is started");
    const char *input = "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_abcdefghijklmnopqrstuvwxyz~DEL0123456789Space!#$%&()*+,-.0123456789:;<=>?";
    mbedtls_sha256_context sha256_ctx;
    unsigned char output[32];
    unsigned char output_origin[32];

    FUNC3(&sha256_ctx);
    FUNC7(output, 0, sizeof(output));
    FUNC4(&sha256_ctx, false);
    for (int i = 0; i < 3; ++i) {
        FUNC5(&sha256_ctx, (unsigned char *)input, 100);
    }
    FUNC2(&sha256_ctx, output);
    FUNC6(output_origin, output, sizeof(output));

    while (exit_flag == false) {
        FUNC3(&sha256_ctx);
        FUNC7(output, 0, sizeof(output));
        FUNC4(&sha256_ctx, false);
        for (int i = 0; i < 3; ++i) {
            FUNC5(&sha256_ctx, (unsigned char *)input, 100);
        }
        FUNC2(&sha256_ctx, output);

        FUNC1(output, output_origin, sizeof(output), "MBEDTLS SHA256 must match");
    }
    FUNC9(*sema);
    FUNC8(NULL);
}
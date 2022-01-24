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
typedef  int /*<<< orphan*/  mbedtls_operation_t ;
typedef  int /*<<< orphan*/  mbedtls_blowfish_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*,unsigned char*) ; 

__attribute__((used)) static int FUNC1( void *ctx, mbedtls_operation_t operation,
        const unsigned char *input, unsigned char *output )
{
    return FUNC0( (mbedtls_blowfish_context *) ctx, operation, input,
                               output );
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  subject; } ;
typedef  TYPE_1__ mbedtls_x509write_csr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 

int FUNC1( mbedtls_x509write_csr *ctx,
                                    const char *subject_name )
{
    return FUNC0( &ctx->subject, subject_name );
}
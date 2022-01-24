#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  extensions; int /*<<< orphan*/  issuer; int /*<<< orphan*/  subject; int /*<<< orphan*/  serial; } ;
typedef  TYPE_1__ mbedtls_x509write_cert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3( mbedtls_x509write_cert *ctx )
{
    FUNC1( &ctx->serial );

    FUNC0( &ctx->subject );
    FUNC0( &ctx->issuer );
    FUNC0( &ctx->extensions );

    FUNC2( ctx, sizeof(mbedtls_x509write_cert) );
}
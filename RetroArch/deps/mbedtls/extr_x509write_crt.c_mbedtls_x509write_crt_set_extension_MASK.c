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
struct TYPE_3__ {int /*<<< orphan*/  extensions; } ;
typedef  TYPE_1__ mbedtls_x509write_cert ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,size_t,int,unsigned char const*,size_t) ; 

int FUNC1( mbedtls_x509write_cert *ctx,
                                 const char *oid, size_t oid_len,
                                 int critical,
                                 const unsigned char *val, size_t val_len )
{
    return FUNC0( &ctx->extensions, oid, oid_len,
                               critical, val, val_len );
}
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
struct TYPE_3__ {int allowed_pks; } ;
typedef  TYPE_1__ mbedtls_x509_crt_profile ;
typedef  int /*<<< orphan*/  mbedtls_pk_type_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1( const mbedtls_x509_crt_profile *profile,
                                      mbedtls_pk_type_t pk_alg )
{
    if( ( profile->allowed_pks & FUNC0( pk_alg ) ) != 0 )
        return( 0 );

    return( -1 );
}
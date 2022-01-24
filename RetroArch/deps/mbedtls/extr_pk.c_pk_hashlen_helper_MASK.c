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
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2( mbedtls_md_type_t md_alg, size_t *hash_len )
{
    const mbedtls_md_info_t *md_info;

    if( *hash_len != 0 )
        return( 0 );

    if( ( md_info = FUNC1( md_alg ) ) == NULL )
        return( -1 );

    *hash_len = FUNC0( md_info );
    return( 0 );
}
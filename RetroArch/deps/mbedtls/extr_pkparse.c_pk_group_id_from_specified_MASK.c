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
typedef  int /*<<< orphan*/  mbedtls_ecp_group_id ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;
typedef  int /*<<< orphan*/  mbedtls_asn1_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( const mbedtls_asn1_buf *params,
                                       mbedtls_ecp_group_id *grp_id )
{
    int ret;
    mbedtls_ecp_group grp;

    FUNC1( &grp );

    if( ( ret = FUNC2( params, &grp ) ) != 0 )
        goto cleanup;

    ret = FUNC3( &grp, grp_id );

cleanup:
    FUNC0( &grp );

    return( ret );
}
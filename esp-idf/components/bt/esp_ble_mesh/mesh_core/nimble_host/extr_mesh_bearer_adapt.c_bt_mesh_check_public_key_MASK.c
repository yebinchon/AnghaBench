#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  u8_t ;
struct mbedtls_ecp_point {int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_ECP_DP_SECP256R1 ; 
 scalar_t__ FUNC0 (TYPE_1__*,struct mbedtls_ecp_point*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbedtls_ecp_point*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbedtls_ecp_point*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,struct mbedtls_ecp_point*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/  const*,int) ; 

bool FUNC8(const u8_t key[64])
{
    struct mbedtls_ecp_point pt = {0};
    mbedtls_ecp_group grp = {0};
    bool rc = false;

    uint8_t pub[65] = {0};
    /* Hardcoded first byte of pub key for MBEDTLS_ECP_PF_UNCOMPRESSED */
    pub[0] = 0x04;
    FUNC7(&pub[1], key, 64);

    /* Initialize the required structures here */
    FUNC5(&pt);
    FUNC2(&grp);

    /* Below 3 steps are to validate public key on curve secp256r1 */
    if (FUNC3(&grp, MBEDTLS_ECP_DP_SECP256R1) != 0) {
        goto exit;
    }

    if (FUNC6(&grp, &pt, pub, 65) != 0) {
        goto exit;
    }

    if (FUNC0(&grp, &pt) != 0) {
        goto exit;
    }

    rc = true;

exit:
    FUNC4(&pt);
    FUNC1(&grp);
    return rc;

}
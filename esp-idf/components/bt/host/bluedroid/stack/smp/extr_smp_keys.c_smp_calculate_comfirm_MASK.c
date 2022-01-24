#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tSMP_STATUS ;
typedef  int /*<<< orphan*/  tSMP_ENC ;
struct TYPE_6__ {int /*<<< orphan*/  tk; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ BT_OCTET16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_OCTET16_LEN ; 
 int /*<<< orphan*/  SMP_AUTH_CMPL_EVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SMP_PAIR_FAIL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 

void FUNC9 (tSMP_CB *p_cb, BT_OCTET16 rand, BD_ADDR bda)
{
    FUNC3(bda);

    BT_OCTET16      p1;
    tSMP_ENC       output;
    tSMP_STATUS     status = SMP_PAIR_FAIL_UNKNOWN;

    FUNC1 ("smp_calculate_comfirm \n");
    /* generate p1 = pres || preq || rat' || iat' */
    FUNC6(p_cb, p1);

    /* p1 = rand XOR p1 */
    FUNC8(p1, rand);

    FUNC5 ((UINT8 *)p1, (const UINT8 *)"P1' = r XOR p1", 16);

    /* calculate e(k, r XOR p1), where k = TK */
    if (!FUNC0(p_cb->tk, BT_OCTET16_LEN, p1, BT_OCTET16_LEN, &output)) {
        FUNC2("smp_generate_csrk failed");
        FUNC7(p_cb, SMP_AUTH_CMPL_EVT, &status);
    } else {
        FUNC4(p_cb, &output);
    }
}
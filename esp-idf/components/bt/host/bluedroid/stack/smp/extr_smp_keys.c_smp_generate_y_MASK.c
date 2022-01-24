#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tSMP_STATUS ;
typedef  int /*<<< orphan*/  tSMP_INT_DATA ;
typedef  int /*<<< orphan*/  tSMP_ENC ;
struct TYPE_5__ {int /*<<< orphan*/  enc_rand; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  int /*<<< orphan*/  BT_OCTET16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BT_OCTET16_LEN ; 
 int /*<<< orphan*/  BT_OCTET8_LEN ; 
 int /*<<< orphan*/  SMP_AUTH_CMPL_EVT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SMP_PAIR_FAIL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(tSMP_CB *p_cb, tSMP_INT_DATA *p)
{
    FUNC4(p);

    BT_OCTET16  dhk;
    tSMP_ENC   output;
    tSMP_STATUS     status = SMP_PAIR_FAIL_UNKNOWN;


    FUNC2 ("smp_generate_y \n");
    FUNC0(dhk);

    if (!FUNC1(dhk, BT_OCTET16_LEN, p_cb->enc_rand,
                     BT_OCTET8_LEN, &output)) {
        FUNC3("smp_generate_y failed");
        FUNC6(p_cb, SMP_AUTH_CMPL_EVT, &status);
    } else {
        FUNC5(p_cb, &output);
    }
}
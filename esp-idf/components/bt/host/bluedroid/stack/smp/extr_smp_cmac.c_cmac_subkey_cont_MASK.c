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
struct TYPE_3__ {int* param_buf; } ;
typedef  TYPE_1__ tSMP_ENC ;
typedef  int UINT8 ;

/* Variables and functions */
 int BT_OCTET16_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  const_Rb ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(tSMP_ENC *p)
{
    UINT8 k1[BT_OCTET16_LEN], k2[BT_OCTET16_LEN];
    UINT8 *pp = p->param_buf;
    FUNC0 ("cmac_subkey_cont ");
    FUNC3(pp, (const UINT8 *)"K1 before shift");

    /* If MSB(L) = 0, then K1 = L << 1 */
    if ( (pp[BT_OCTET16_LEN - 1] & 0x80) != 0 ) {
        /* Else K1 = ( L << 1 ) (+) Rb */
        FUNC2(pp, k1);
        FUNC4(k1, const_Rb);
    } else {
        FUNC2(pp, k1);
    }

    if ( (k1[BT_OCTET16_LEN - 1] & 0x80) != 0 ) {
        /* K2 =  (K1 << 1) (+) Rb */
        FUNC2(k1, k2);
        FUNC4(k2, const_Rb);
    } else {
        /* If MSB(K1) = 0, then K2 = K1 << 1 */
        FUNC2(k1, k2);
    }

    FUNC3(k1, (const UINT8 *)"K1");
    FUNC3(k2, (const UINT8 *)"K2");

    FUNC1 (k1, k2);
}
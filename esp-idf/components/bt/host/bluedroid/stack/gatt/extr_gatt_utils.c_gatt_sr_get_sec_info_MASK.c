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
typedef  int /*<<< orphan*/  tBT_TRANSPORT ;
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int GATT_SEC_FLAG_ENCRYPTED ; 
 int GATT_SEC_FLAG_LKEY_AUTHED ; 
 int GATT_SEC_FLAG_LKEY_UNAUTHED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(BD_ADDR rem_bda, tBT_TRANSPORT transport, UINT8 *p_sec_flag, UINT8 *p_key_size)
{
    UINT8           sec_flag = 0;

    FUNC0(rem_bda, &sec_flag, transport);

    sec_flag &= (GATT_SEC_FLAG_LKEY_UNAUTHED | GATT_SEC_FLAG_LKEY_AUTHED | GATT_SEC_FLAG_ENCRYPTED);
#if (SMP_INCLUDED == TRUE)
    *p_key_size = FUNC1(rem_bda);
#endif  ///SMP_INCLUDED == TRUE
    *p_sec_flag = sec_flag;
}
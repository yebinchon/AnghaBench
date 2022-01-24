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
struct TYPE_3__ {int /*<<< orphan*/  enc_key_size; } ;
typedef  TYPE_1__ tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(BD_ADDR bd_addr, UINT8 enc_key_size)
{
    tBTM_SEC_DEV_REC *p_rec;

    FUNC0("btm_ble_update_sec_key_size enc_key_size = %d", enc_key_size);

    if ((p_rec = FUNC1 (bd_addr)) != NULL ) {
        p_rec->enc_key_size = enc_key_size;
    }
}
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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  OSI_MUTEX_MAX_TIMEOUT ; 
 int /*<<< orphan*/  OSI_SEM_MAX_TIMEOUT ; 
 int /*<<< orphan*/  adv_data_lock ; 
 int /*<<< orphan*/  adv_data_sem ; 
 int /*<<< orphan*/  adv_data_status ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

tBTM_STATUS FUNC4(UINT8 *p_raw_adv, UINT32 raw_adv_len)
{
    tBTM_STATUS ret;
    FUNC1(&adv_data_lock, OSI_MUTEX_MAX_TIMEOUT);
    if (FUNC0((UINT8)raw_adv_len, p_raw_adv)) {
        FUNC3(&adv_data_sem, OSI_SEM_MAX_TIMEOUT);
        ret = adv_data_status;
    } else {
        ret = BTM_NO_RESOURCES;
    }
    FUNC2(&adv_data_lock);

    return ret;
}
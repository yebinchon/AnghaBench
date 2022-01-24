#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tGATTS_SRV_CHG ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_2__ {int /*<<< orphan*/  srv_chg_clt_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIXED_QUEUE_MAX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ gatt_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

tGATTS_SRV_CHG *FUNC4(tGATTS_SRV_CHG *p_srv_chg)
{
    tGATTS_SRV_CHG *p_buf;
    FUNC0 ("gatt_add_srv_chg_clt");
    if ((p_buf = (tGATTS_SRV_CHG *)FUNC3((UINT16)sizeof(tGATTS_SRV_CHG))) != NULL) {
        FUNC0 ("enqueue a srv chg client");
        FUNC2(p_buf, p_srv_chg, sizeof(tGATTS_SRV_CHG));
    FUNC1(gatt_cb.srv_chg_clt_q, p_buf, FIXED_QUEUE_MAX_TIMEOUT);
    }

    return p_buf;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trusted_mask ;
struct TYPE_4__ {int /*<<< orphan*/  bd_addr; int /*<<< orphan*/ * p_pin; int /*<<< orphan*/  pin_len; scalar_t__ accept; } ;
struct TYPE_5__ {TYPE_1__ pin_reply; } ;
typedef  TYPE_2__ tBTA_DM_MSG ;
typedef  int /*<<< orphan*/  UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_NOT_AUTHORIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int BTM_SEC_SERVICE_ARRAY_SIZE ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC4 (tBTA_DM_MSG *p_data)
{
#if (CLASSIC_BT_INCLUDED == TRUE)
    UINT32  trusted_mask[BTM_SEC_SERVICE_ARRAY_SIZE];
    UINT32   *current_trusted_mask;

    current_trusted_mask = FUNC1(p_data->pin_reply.bd_addr);

    if (current_trusted_mask) {
        FUNC2(trusted_mask, current_trusted_mask, sizeof(trusted_mask));
    } else {
        FUNC3(trusted_mask, 0, sizeof(trusted_mask));
    }

    if (p_data->pin_reply.accept) {

        FUNC0(p_data->pin_reply.bd_addr, BTM_SUCCESS, p_data->pin_reply.pin_len, p_data->pin_reply.p_pin, trusted_mask );
    } else {
        FUNC0(p_data->pin_reply.bd_addr, BTM_NOT_AUTHORIZED, 0, NULL, trusted_mask );
    }
#endif  ///CLASSIC_BT_INCLUDED == TRUE
}
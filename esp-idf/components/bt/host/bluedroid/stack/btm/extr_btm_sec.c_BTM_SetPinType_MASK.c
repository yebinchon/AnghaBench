#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
struct TYPE_4__ {scalar_t__ pin_type; int /*<<< orphan*/  pin_code; scalar_t__ pin_code_len; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;
struct TYPE_5__ {scalar_t__ (* get_is_ready ) () ;} ;
typedef  scalar_t__ PIN_CODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char*,scalar_t__) ; 
 TYPE_3__ btm_cb ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 () ; 

void FUNC5 (UINT8 pin_type, PIN_CODE pin_code, UINT8 pin_code_len)
{
    FUNC0 ("BTM_SetPinType: pin type %d [variable-0, fixed-1], code %s, length %d\n",
                   pin_type, (char *) pin_code, pin_code_len);

    /* If device is not up security mode will be set as a part of startup */
    if ( (btm_cb.cfg.pin_type != pin_type)
            && FUNC2()->get_is_ready() ) {
        FUNC1 (pin_type);
    }

    btm_cb.cfg.pin_type     = pin_type;
    btm_cb.cfg.pin_code_len = pin_code_len;
    FUNC3 (btm_cb.cfg.pin_code, pin_code, pin_code_len);
}
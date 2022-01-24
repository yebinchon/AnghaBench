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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_2__ {scalar_t__ (* supports_extended_inquiry_response ) () ;} ;
typedef  int /*<<< orphan*/  BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_MODE_UNSUPPORTED ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 

tBTM_STATUS FUNC5( BT_HDR *p_buff, BOOLEAN fec_required)
{
    if (FUNC2()->supports_extended_inquiry_response()) {
        FUNC0("Write Extended Inquiry Response to controller\n");
        FUNC1 (p_buff, fec_required);
        return BTM_SUCCESS;
    } else {
        FUNC3(p_buff);
        return BTM_MODE_UNSUPPORTED;
    }
}
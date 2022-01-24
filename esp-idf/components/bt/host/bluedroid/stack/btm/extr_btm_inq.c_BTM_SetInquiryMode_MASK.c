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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_3__ {int /*<<< orphan*/  (* supports_extended_inquiry_response ) () ;int /*<<< orphan*/  (* supports_rssi_with_inquiry_results ) () ;} ;
typedef  TYPE_1__ controller_t ;
typedef  scalar_t__ UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 scalar_t__ BTM_INQ_RESULT_EXTENDED ; 
 scalar_t__ BTM_INQ_RESULT_STANDARD ; 
 scalar_t__ BTM_INQ_RESULT_WITH_RSSI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BTM_MODE_UNSUPPORTED ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  BTM_WRONG_MODE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

tBTM_STATUS FUNC6 (UINT8 mode)
{
    const controller_t *controller = FUNC3();
    FUNC1 ("BTM_SetInquiryMode\n");
    if (mode == BTM_INQ_RESULT_STANDARD) {
        /* mandatory mode */
    } else if (mode == BTM_INQ_RESULT_WITH_RSSI) {
        if (!controller->supports_rssi_with_inquiry_results()) {
            return (BTM_MODE_UNSUPPORTED);
        }
    } else if (mode == BTM_INQ_RESULT_EXTENDED) {
        if (!controller->supports_extended_inquiry_response()) {
            return (BTM_MODE_UNSUPPORTED);
        }
    } else {
        return (BTM_ILLEGAL_VALUE);
    }

    if (!FUNC0()) {
        return (BTM_WRONG_MODE);
    }

    if (!FUNC2 (mode)) {
        return (BTM_NO_RESOURCES);
    }

    return (BTM_SUCCESS);
}
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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_4__ {int /*<<< orphan*/  dev_class; } ;
struct TYPE_6__ {TYPE_1__ devcb; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_is_ready ) () ;} ;
typedef  int /*<<< orphan*/  DEV_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_DEV_RESET ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  DEV_CLASS_LEN ; 
 TYPE_3__ btm_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

tBTM_STATUS FUNC5 (DEV_CLASS dev_class)
{
    if (!FUNC2 (btm_cb.devcb.dev_class, dev_class, DEV_CLASS_LEN)) {
        return (BTM_SUCCESS);
    }

    FUNC3 (btm_cb.devcb.dev_class, dev_class, DEV_CLASS_LEN);

    if (!FUNC1()->get_is_ready()) {
        return (BTM_DEV_RESET);
    }

    if (!FUNC0 (dev_class)) {
        return (BTM_NO_RESOURCES);
    }

    return (BTM_SUCCESS);
}
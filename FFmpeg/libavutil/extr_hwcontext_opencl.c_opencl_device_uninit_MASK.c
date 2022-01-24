#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ cl_int ;
struct TYPE_8__ {TYPE_1__* internal; } ;
struct TYPE_7__ {int /*<<< orphan*/ * command_queue; } ;
struct TYPE_6__ {TYPE_2__* priv; } ;
typedef  TYPE_2__ OpenCLDeviceContext ;
typedef  TYPE_3__ AVHWDeviceContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(AVHWDeviceContext *hwdev)
{
    OpenCLDeviceContext *priv = hwdev->internal->priv;
    cl_int cle;

    if (priv->command_queue) {
        cle = FUNC1(priv->command_queue);
        if (cle != CL_SUCCESS) {
            FUNC0(hwdev, AV_LOG_ERROR, "Failed to release internal "
                   "command queue reference: %d.\n", cle);
        }
        priv->command_queue = NULL;
    }
}
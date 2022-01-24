#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  as_array; } ;
struct TYPE_4__ {TYPE_1__ features_ble; int /*<<< orphan*/  ble_supported; int /*<<< orphan*/  readable; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ controller_param ; 

__attribute__((used)) static bool FUNC2(void)
{
    FUNC1(controller_param.readable);
    FUNC1(controller_param.ble_supported);
    return FUNC0(controller_param.features_ble.as_array);
}
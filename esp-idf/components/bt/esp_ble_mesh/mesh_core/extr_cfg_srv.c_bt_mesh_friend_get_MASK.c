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
typedef  int /*<<< orphan*/  u8_t ;
struct TYPE_3__ {int /*<<< orphan*/  frnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MESH_FRIEND_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* conf ; 

u8_t FUNC1(void)
{
    if (conf) {
        FUNC0("conf %p conf->frnd 0x%02x", conf, conf->frnd);
        return conf->frnd;
    }

    return BLE_MESH_FRIEND_NOT_SUPPORTED;
}
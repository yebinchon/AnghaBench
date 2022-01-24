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
typedef  scalar_t__ u16_t ;
struct TYPE_3__ {scalar_t__ frnd; } ;
struct TYPE_4__ {TYPE_1__ lpn; } ;

/* Variables and functions */
 TYPE_2__ bt_mesh ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static inline bool FUNC1(u16_t addr)
{
#if defined(CONFIG_BLE_MESH_LOW_POWER)
    if (bt_mesh_lpn_established()) {
        return (addr == bt_mesh.lpn.frnd);
    }
#endif
    return false;
}
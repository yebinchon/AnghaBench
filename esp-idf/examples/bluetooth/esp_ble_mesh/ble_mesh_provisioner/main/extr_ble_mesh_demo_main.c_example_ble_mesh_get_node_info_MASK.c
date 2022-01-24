#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ unicast; scalar_t__ elem_num; } ;
typedef  TYPE_1__ esp_ble_mesh_node_info_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* nodes ; 

__attribute__((used)) static esp_ble_mesh_node_info_t *FUNC2(uint16_t unicast)
{
    int i;

    if (!FUNC1(unicast)) {
        return NULL;
    }

    for (i = 0; i < FUNC0(nodes); i++) {
        if (nodes[i].unicast <= unicast &&
                nodes[i].unicast + nodes[i].elem_num > unicast) {
            return &nodes[i];
        }
    }

    return NULL;
}
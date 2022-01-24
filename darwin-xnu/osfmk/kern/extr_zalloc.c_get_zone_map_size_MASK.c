#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* zone_map ; 

void FUNC2(uint64_t *current_size, uint64_t *capacity)
{
	*current_size = zone_map->size;
	*capacity = FUNC0(zone_map) - FUNC1(zone_map);
}
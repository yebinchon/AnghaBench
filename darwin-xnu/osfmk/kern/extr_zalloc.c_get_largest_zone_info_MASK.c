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
typedef  TYPE_1__* zone_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  cur_size; int /*<<< orphan*/  zone_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* FUNC1 () ; 

void FUNC2(char *zone_name, size_t zone_name_len, uint64_t *zone_size)
{
	zone_t largest_zone = FUNC1();
	FUNC0(zone_name, largest_zone->zone_name, zone_name_len);
	*zone_size = largest_zone->cur_size;
}
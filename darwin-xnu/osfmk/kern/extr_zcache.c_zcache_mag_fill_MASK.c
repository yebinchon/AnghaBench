#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* zone_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ uint32_t ;
struct zcc_magazine {scalar_t__ zcc_magazine_index; scalar_t__ zcc_magazine_capacity; } ;
struct TYPE_7__ {int /*<<< orphan*/  elem_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASAN_HEAP_FREED ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct zcc_magazine*,void*) ; 

bool FUNC7(zone_t zone, struct zcc_magazine *mag)
{
	FUNC0(mag->zcc_magazine_index == 0);
	void* elem = NULL;
	uint32_t i;
	FUNC2(zone);
	for(i = mag->zcc_magazine_index; i < mag->zcc_magazine_capacity; i ++){
		elem = FUNC4(zone);
		if(elem) {
			FUNC5(zone, elem);
			FUNC6(mag, elem);
#if KASAN_ZALLOC
			kasan_poison_range((vm_offset_t)elem, zone->elem_size, ASAN_HEAP_FREED);
#endif
		} else {
			break;
		}
	}
	FUNC3(zone);
	if (i == 0){
		return FALSE;
	}
	return TRUE;
}
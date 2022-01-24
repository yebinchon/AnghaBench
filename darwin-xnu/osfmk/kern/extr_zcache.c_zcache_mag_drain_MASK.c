#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zone_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  size_t uint32_t ;
struct zcc_magazine {size_t zcc_magazine_index; size_t zcc_magazine_capacity; scalar_t__* zcc_elements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(zone_t zone, struct zcc_magazine *mag)
{
	FUNC0(mag->zcc_magazine_index == mag->zcc_magazine_capacity);
	FUNC1(zone);
	while(mag->zcc_magazine_index > 0){
		uint32_t index = --mag->zcc_magazine_index;
		FUNC3(zone, mag->zcc_elements[index]);
		FUNC4(zone,(vm_offset_t)mag->zcc_elements[index]);
		mag->zcc_elements[mag->zcc_magazine_index] = 0;
	}
	FUNC2(zone);
}
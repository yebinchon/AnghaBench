#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {TYPE_1__* item; } ;
typedef  TYPE_2__ kcdata_iter_t ;
struct TYPE_8__ {int size; scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ KCDATA_TYPE_ARRAY ; 
 int FUNC0 (TYPE_2__) ; 
 int FUNC1 (TYPE_2__) ; 
 scalar_t__ FUNC2 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 

__attribute__((used)) static inline
int FUNC4(kcdata_iter_t iter) {
	if (!FUNC3(iter))
		return 0;
	if (FUNC2(iter) != KCDATA_TYPE_ARRAY)
		return 0;
    if (FUNC0(iter) == 0)
		return iter.item->size == 0;
	if (iter.item->type == KCDATA_TYPE_ARRAY) {
		uint32_t elem_size = FUNC1(iter);
		if (elem_size == 0)
			return 0;
		/* sizes get aligned to the nearest 16. */
		return
			FUNC0(iter) <= iter.item->size / elem_size &&
			iter.item->size % FUNC0(iter) < 16;
	} else {
		return
			(iter.item->type & 0xf) <= iter.item->size &&
			FUNC0(iter) <= iter.item->size - (iter.item->type & 0xf) &&
			(iter.item->size - (iter.item->type & 0xf)) % FUNC0(iter) == 0;
	}
}
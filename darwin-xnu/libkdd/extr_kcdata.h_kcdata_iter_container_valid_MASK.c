#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {TYPE_1__* item; } ;
typedef  TYPE_2__ kcdata_iter_t ;
struct TYPE_6__ {int size; } ;

/* Variables and functions */
 scalar_t__ KCDATA_TYPE_CONTAINER_BEGIN ; 
 scalar_t__ FUNC0 (TYPE_2__) ; 
 scalar_t__ FUNC1 (TYPE_2__) ; 

__attribute__((used)) static inline
int FUNC2(kcdata_iter_t iter) {
	return
		FUNC1(iter) &&
		FUNC0(iter) == KCDATA_TYPE_CONTAINER_BEGIN &&
		iter.item->size >= sizeof(uint32_t);
}
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
struct TYPE_4__ {scalar_t__ lck_mtx_type; scalar_t__ lck_mtx_tag; } ;
typedef  TYPE_1__ lck_mtx_t ;

/* Variables and functions */
 scalar_t__ LCK_MTX_TAG_DESTROYED ; 
 scalar_t__ LCK_MTX_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 

__attribute__((used)) static inline void
FUNC1(lck_mtx_t *lock)
{
	if (lock->lck_mtx_type != LCK_MTX_TYPE)
		FUNC0("Invalid mutex %p", lock);
#if	DEVELOPMENT || DEBUG
	if (lock->lck_mtx_tag == LCK_MTX_TAG_DESTROYED)
		panic("Mutex destroyed %p", lock);
#endif	/* DEVELOPMENT || DEBUG */
}
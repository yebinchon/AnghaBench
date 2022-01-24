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
struct TYPE_3__ {scalar_t__ lck_rw_shared_count; scalar_t__ lck_rw_want_write; scalar_t__ lck_rw_want_upgrade; } ;
typedef  TYPE_1__ lck_rw_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ not_in_kdp ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

boolean_t
FUNC1(lck_rw_t *lck) {
	if (not_in_kdp) {
		FUNC0("panic: rw lock exclusive check done outside of kernel debugger");
	}
	return ((lck->lck_rw_want_upgrade || lck->lck_rw_want_write) && (lck->lck_rw_shared_count == 0)) ? TRUE : FALSE;
}
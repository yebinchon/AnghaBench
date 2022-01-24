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
typedef  TYPE_1__* uthread_t ;
struct _throttle_io_info_t {scalar_t__ throttle_io_periods; scalar_t__ throttle_disabled; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {int uu_lowpri_window; int /*<<< orphan*/  uu_throttle_bc; struct _throttle_io_info_t* uu_throttle_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct _throttle_io_info_t*,struct _throttle_io_info_t*) ; 
 scalar_t__ lowpri_throttle_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct _throttle_io_info_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct _throttle_io_info_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC3(uthread_t ut, struct _throttle_io_info_t *info, boolean_t BC_throttle, boolean_t isssd)
{
	if (lowpri_throttle_enabled == 0 || info->throttle_disabled)
		return;

	if (info->throttle_io_periods == 0) {
		FUNC2(info, isssd);
	}
	if (ut->uu_throttle_info == NULL) {

		ut->uu_throttle_info = info;
		FUNC1(info);
		FUNC0("updating info = %p\n", info, info );

		ut->uu_lowpri_window = 1;
		ut->uu_throttle_bc = BC_throttle;
	}
}
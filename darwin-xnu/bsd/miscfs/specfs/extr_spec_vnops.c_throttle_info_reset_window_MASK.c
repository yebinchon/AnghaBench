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
typedef  TYPE_1__* uthread_t ;
struct _throttle_io_info_t {int dummy; } ;
struct TYPE_4__ {int uu_throttle_bc; scalar_t__ uu_lowpri_window; struct _throttle_io_info_t* uu_throttle_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _throttle_io_info_t*) ; 

void FUNC3(uthread_t ut)
{
	struct _throttle_io_info_t *info;

	if (ut == NULL) 
		ut = FUNC1(FUNC0());

	if ( (info = ut->uu_throttle_info) ) {
		FUNC2(info);

		ut->uu_throttle_info = NULL;
		ut->uu_lowpri_window = 0;
		ut->uu_throttle_bc = false;
	}
}
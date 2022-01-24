#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vc_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* initialize ) (struct vc_info*) ;} ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ gc_initialized ; 
 TYPE_1__ gc_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ gc_x ; 
 scalar_t__ gc_y ; 
 int /*<<< orphan*/  FUNC2 (struct vc_info*) ; 

__attribute__((used)) static void
FUNC3(struct vc_info * info)
{
	if ( gc_initialized == FALSE )
	{
		/* Init our lock */
		FUNC0();

		gc_initialized = TRUE;
	}

	gc_ops.initialize(info);

	FUNC1();
	gc_x = gc_y = 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ value; } ;
struct TYPE_7__ {int vidWidth; int vidHeight; } ;
struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  None ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_4__* com_developer ; 
 int /*<<< orphan*/  dpy ; 
 TYPE_3__ glConfig ; 
 TYPE_2__* in_dgamouse ; 
 int /*<<< orphan*/  mouse_accel_denominator ; 
 int /*<<< orphan*/  mouse_accel_numerator ; 
 int /*<<< orphan*/  mouse_threshold ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  win ; 

__attribute__((used)) static void FUNC8(void)
{
  if (in_dgamouse->value)
  {
		if (com_developer->value)
			ri.Printf( PRINT_ALL, "DGA Mouse - Disabling DGA DirectVideo\n" );
    FUNC2(dpy, FUNC0(dpy), 0);
  }

  FUNC1(dpy, qtrue, qtrue, mouse_accel_numerator, 
                        mouse_accel_denominator, mouse_threshold);

  FUNC5(dpy, CurrentTime);
  FUNC4(dpy, CurrentTime);

  FUNC6(dpy, None, win,
               0, 0, 0, 0,
               glConfig.vidWidth / 2, glConfig.vidHeight / 2);

  // inviso cursor
  FUNC3(dpy, win);
}
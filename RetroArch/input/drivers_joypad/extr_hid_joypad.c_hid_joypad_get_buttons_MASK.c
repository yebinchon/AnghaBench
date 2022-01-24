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
typedef  int /*<<< orphan*/  input_bits_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_buttons ) (void*,unsigned int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* generic_hid ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned port, input_bits_t *state)
{
   if (generic_hid && generic_hid->get_buttons)
      generic_hid->get_buttons((void*)FUNC1(), port, state);
   else
      FUNC0(state);
}
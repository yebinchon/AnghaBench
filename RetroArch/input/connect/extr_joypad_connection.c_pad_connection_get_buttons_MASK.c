#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; TYPE_1__* iface; } ;
typedef  TYPE_2__ joypad_connection_t ;
typedef  int /*<<< orphan*/  input_bits_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_buttons ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(joypad_connection_t *joyconn,
      unsigned pad, input_bits_t *state)
{
	if (joyconn && joyconn->iface)
		joyconn->iface->get_buttons(joyconn->data, state);
   else
		FUNC0( state );
}
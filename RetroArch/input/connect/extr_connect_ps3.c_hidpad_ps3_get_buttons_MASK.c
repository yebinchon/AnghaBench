#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hidpad_ps3_data {int /*<<< orphan*/  buttons; } ;
typedef  int /*<<< orphan*/  input_bits_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *data, input_bits_t *state)
{
	struct hidpad_ps3_data *device = (struct hidpad_ps3_data*)data;
	if ( device )
	{
		/* copy 32 bits : needed for PS button? */
		FUNC1(state, device->buttons);
	}
	else
      FUNC0(state);
}
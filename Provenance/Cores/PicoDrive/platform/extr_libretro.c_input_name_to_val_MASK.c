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
typedef  enum input_device { ____Placeholder_input_device } input_device ;

/* Variables and functions */
 int PICO_INPUT_NOTHING ; 
 int PICO_INPUT_PAD_3BTN ; 
 int PICO_INPUT_PAD_6BTN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static enum input_device FUNC2(const char *name)
{
	if (FUNC1(name, "3 button pad") == 0)
		return PICO_INPUT_PAD_3BTN;
	if (FUNC1(name, "6 button pad") == 0)
		return PICO_INPUT_PAD_6BTN;
	if (FUNC1(name, "None") == 0)
		return PICO_INPUT_NOTHING;

	FUNC0("invalid picodrive_input: '%s'\n", name);
	return PICO_INPUT_PAD_3BTN;
}
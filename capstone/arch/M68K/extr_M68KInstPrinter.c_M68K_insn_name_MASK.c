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
typedef  int /*<<< orphan*/  csh ;

/* Variables and functions */
 char const** s_instruction_names ; 

const char* FUNC0(csh handle, unsigned int id)
{
#ifdef CAPSTONE_DIET
	return NULL;
#else
	return s_instruction_names[id];
#endif
}
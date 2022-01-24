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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int gPanicBase ; 
 int /*<<< orphan*/ * panic_info ; 
 unsigned int panic_text_len ; 

uint32_t
FUNC1(char *location)
{
	FUNC0(panic_info != NULL);
	FUNC0(location > (char *) panic_info);
	FUNC0((unsigned int)(location - (char *) panic_info) < panic_text_len);

	return (uint32_t) (location - gPanicBase);
}
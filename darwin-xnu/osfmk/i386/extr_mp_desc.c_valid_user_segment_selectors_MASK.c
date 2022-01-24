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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC3(uint16_t cs,
		uint16_t ss,
		uint16_t ds,
		uint16_t es,
		uint16_t fs,
		uint16_t gs)
{	
	return FUNC0(cs)  &&
		FUNC2(ss) &&
		FUNC1(ds)  &&
		FUNC1(es)  &&
		FUNC1(fs)  &&
		FUNC1(gs);
}
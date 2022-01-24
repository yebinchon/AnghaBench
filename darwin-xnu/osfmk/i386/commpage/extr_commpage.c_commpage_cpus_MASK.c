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

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2( void )
{
	int cpus;

	cpus = FUNC0();                   // NB: this call can block

	if (cpus == 0)
		FUNC1("commpage cpus==0");
	if (cpus > 0xFF)
		cpus = 0xFF;

	return cpus;
}
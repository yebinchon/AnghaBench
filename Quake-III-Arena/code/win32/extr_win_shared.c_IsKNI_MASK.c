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
 int /*<<< orphan*/  FUNC0 (int,unsigned int*) ; 
 int qfalse ; 
 int qtrue ; 

__attribute__((used)) static int FUNC1( void )
{
	unsigned regs[4];

	// get CPU feature bits
	FUNC0( 1, regs );

	// bit 25 of EDX denotes KNI existence
	if ( regs[3] & ( 1 << 25 ) )
		return qtrue;

	return qfalse;
}
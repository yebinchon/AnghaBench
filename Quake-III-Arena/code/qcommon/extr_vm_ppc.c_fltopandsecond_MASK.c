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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PPC_ADDI ; 
 int /*<<< orphan*/  PPC_LFS ; 
 int /*<<< orphan*/  R_OPSTACK ; 
 int /*<<< orphan*/  R_SECOND ; 
 int /*<<< orphan*/  R_TOP ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  rtopped ; 

__attribute__((used)) static void FUNC1() {
	FUNC0( PPC_LFS, R_TOP, R_OPSTACK, 0 );		// get value from opstack
	FUNC0( PPC_LFS, R_SECOND, R_OPSTACK, -4 );	// get value from opstack
	FUNC0( PPC_ADDI, R_OPSTACK, R_OPSTACK, -8 );
    rtopped = qfalse;
	return;
}
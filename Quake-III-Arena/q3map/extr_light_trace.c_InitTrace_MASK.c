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
typedef  int /*<<< orphan*/  tnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int MAX_TNODES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * tnode_p ; 
 int /*<<< orphan*/ * tnodes ; 

void FUNC3( void ) {
	// 32 byte align the structs
	tnodes = FUNC2( (MAX_TNODES+1) * sizeof(tnode_t));
	tnodes = (tnode_t *)(((int)tnodes + 31)&~31);
	tnode_p = tnodes;

	FUNC1 (0);

	FUNC0();
}
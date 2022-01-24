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
typedef  int /*<<< orphan*/  Reinst ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  NOP ; 
 int /*<<< orphan*/ * andp ; 
 int /*<<< orphan*/ * andstack ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static	Node*
FUNC3(int op)
{
	Reinst *inst;

	if(andp <= &andstack[0]){
		FUNC2("missing operand for ", op);
		inst = FUNC0(NOP);
		FUNC1(inst,inst);
	}
	return --andp;
}
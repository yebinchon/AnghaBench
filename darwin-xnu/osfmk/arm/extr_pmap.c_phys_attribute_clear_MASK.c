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
typedef  int /*<<< orphan*/  ppnum_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,...) ; 
 int /*<<< orphan*/  PMAP__ATTRIBUTE_CLEAR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int,void*) ; 

__attribute__((used)) static void
FUNC3(
	ppnum_t		pn,
	unsigned int	bits,
	int		options,
	void		*arg)
{
	/*
	 * Do we really want this tracepoint?  It will be extremely chatty.
	 * Also, should we have a corresponding trace point for the set path?
	 */
	FUNC1(3, FUNC0(PMAP__ATTRIBUTE_CLEAR) | DBG_FUNC_START, pn, bits);

	FUNC2(pn, bits, options, arg);

	FUNC1(3, FUNC0(PMAP__ATTRIBUTE_CLEAR) | DBG_FUNC_END);
}
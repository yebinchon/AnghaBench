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
typedef  int UWORD ;
typedef  scalar_t__ UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(UBYTE *val)
{
	UWORD uword;
	if (!FUNC0(&uword) || uword > 0xff)
		FUNC1("Invalid argument!\n");
	else
		*val = (UBYTE) uword;
}
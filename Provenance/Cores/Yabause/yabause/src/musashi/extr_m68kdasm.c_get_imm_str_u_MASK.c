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
typedef  int uint ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static char* FUNC4(uint size)
{
	static char str[15];
	if(size == 0)
		FUNC3(str, "#$%x", FUNC2() & 0xff);
	else if(size == 1)
		FUNC3(str, "#$%x", FUNC0() & 0xffff);
	else
		FUNC3(str, "#$%x", FUNC1() & 0xffffffff);
	return str;
}
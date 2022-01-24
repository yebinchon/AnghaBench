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
 int /*<<< orphan*/  FUNC0 (int,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(const char *msg, int waitforkey)
{
	FUNC1(0x94, 1, 22, 38, 22);
	FUNC0(0x94, 0x9a, msg, 22);
	if (waitforkey)
		FUNC2();
	else
		FUNC3();
}
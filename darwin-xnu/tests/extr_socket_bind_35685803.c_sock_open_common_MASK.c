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
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(int pf, int type)
{
	int 	s;

	s = FUNC1(pf, type, 0);
	T_QUIET;
	FUNC0(s, "socket(%d, %d, 0)", pf, type);
	return (s);
}
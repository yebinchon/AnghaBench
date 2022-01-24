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
 int ANTIC_XPOS ; 
 int collision_curpos ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(void)
{
	int l = collision_curpos;
	int r = ANTIC_XPOS * 2 - 37;
	FUNC0(l, r);
	collision_curpos = r;
}
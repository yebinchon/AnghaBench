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
 char* COPYRIGHT_YEAR ; 
 char* PROG_NAME ; 
 char* VER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

void FUNC2()
{
   FUNC1("%s v%s - by Cyber Warrior X (c)%s\n", PROG_NAME, VER_NAME, COPYRIGHT_YEAR);
   FUNC1("usage: %s <drive pathname as specified in cd.c>\n", PROG_NAME);
   FUNC0 (1);
}
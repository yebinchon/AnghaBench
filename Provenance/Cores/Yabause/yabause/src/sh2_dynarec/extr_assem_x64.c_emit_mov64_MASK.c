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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(int rs,int rt)
{
  FUNC0("mov %%%s,%%%s\n",regname[rs],regname[rt]);
  FUNC3(1,rs>>3,0,rt>>3);
  FUNC1(0x89);
  FUNC2(3,rt&7,rs&7);
}
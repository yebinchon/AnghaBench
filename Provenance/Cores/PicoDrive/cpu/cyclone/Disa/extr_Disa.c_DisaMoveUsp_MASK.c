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
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DisaText ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC2(int op)
{
  // Move USP opcode, 01001110 0110dnnn move An to/from USP (d=direction)
  int ea=0,dir=0;
  char eat[64]="";

  dir=(op>>3)&1;
  ea=(op&7)|8;
  FUNC0(eat,ea,0);

  if (dir) FUNC1(DisaText,"move usp, %s",eat);
  else     FUNC1(DisaText,"move %s, usp",eat);
  return 0;
}
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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  DisaText ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC2(int op)
{
  // Pea 01001000 01eeeeee  (eeeeee=ea)  pea 
  int ea=0;
  char eat[64]="";

  ea=op&0x003f; if (ea<0x10) return 1; // swap opcode
  FUNC0(eat,ea,2);

  FUNC1(DisaText,"pea %s",eat);
  return 0;
}
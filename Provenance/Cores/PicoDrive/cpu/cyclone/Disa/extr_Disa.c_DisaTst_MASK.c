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
 int* Tasm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 

__attribute__((used)) static int FUNC2(int op)
{
  // Tst 01001010 xxeeeeee  (eeeeee=ea)
  int ea=0;
  char eat[64]="";
  int size=0;

  ea=op&0x003f;
  FUNC0(eat,ea,0);
  size=(op>>6)&3; if (size>=3) return 1;

  FUNC1(DisaText,"tst.%c %s",Tasm[size],eat);
  return 0;
}
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
  // 01000tt0 11eeeeee (tt=type, xx=size, eeeeee=EA)
  int type=0,ea=0;
  char eat[64]="";

  type=(op>>9)&3;
  ea=op&0x3f;
  FUNC0(eat,ea,1);

  switch (type)
  {
    default: FUNC1(DisaText,"move sr, %s", eat); break;
    case 1:  FUNC1(DisaText,"move ccr, %s",eat); break;
    case 2:  FUNC1(DisaText,"move %s, ccr",eat); break;
    case 3:  FUNC1(DisaText,"move %s, sr", eat); break;
  }
  return 0;
}
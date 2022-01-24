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
 int /*<<< orphan*/  DisaText ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int* Tasm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC2(int op)
{
  // movep.x (Aa),Dn - 0000nnn1 dx001aaa  nn
  int dn=0,dir=0,size=0,an=0;
  char offset[32]="";

  dn  =(op>>9)&7;
  dir =(op>>7)&1;
  size=(op>>6)&1; size++;
  an  = op    &7;

  FUNC0(offset);
  if (dir) FUNC1(DisaText,"movep.%c d%d, (%s,a%d)",Tasm[size],dn,offset,an);
  else     FUNC1(DisaText,"movep.%c (%s,a%d), d%d",Tasm[size],offset,an,dn);

  return 0;
}
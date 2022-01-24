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
 int* Tasm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC2(int op)
{
  // 1t01ddd1 xx000sss addx
  int type=0,size=0,dea=0,sea=0,mem;
  char deat[64]="",seat[64]="";
  char *opcode[6]={"","subx","","","","addx"};

  type=(op>>12)&5;
  dea =(op>> 9)&7;
  size=(op>> 6)&3; if (size>=3) return 1;
  sea = op&7;
  mem = op&8;
  if(mem) { sea+=0x20; dea+=0x20; }

  FUNC0(deat,dea,size);
  FUNC0(seat,sea,size);

  FUNC1(DisaText,"%s.%c %s, %s",opcode[type],Tasm[size],seat,deat);
  return 0;
}
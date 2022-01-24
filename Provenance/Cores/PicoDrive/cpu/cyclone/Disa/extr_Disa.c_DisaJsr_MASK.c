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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static int FUNC2(int op)
{
  // Jsr/Jmp 0100 1110 1mEE Eeee (eeeeee=ea m=1=jmp)
  int sea=0;
  char seat[64]="";

  sea=op&0x003f;
  FUNC0(seat,sea,0);

  FUNC1(DisaText,"j%s %s", op&0x40?"mp":"sr", seat);
  return 0;
}
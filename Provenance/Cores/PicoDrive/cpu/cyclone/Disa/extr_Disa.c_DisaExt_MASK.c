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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 

__attribute__((used)) static int FUNC2(int op)
{
  // Ext 01001000 1x000nnn (x=size, eeeeee=EA)
  char eat[64]="";
  int size=0;

  size=(op>>6)&1; size++;
  FUNC0(eat,op&0x3f,size);

  FUNC1(DisaText,"ext.%c %s",Tasm[size],eat);
  return 0;
}
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
struct regstat {scalar_t__ isdoingcp; } ;

/* Variables and functions */
 int CCREG ; 
 int MOREG ; 
 int SR ; 
 int VBR ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regstat*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regstat*,int) ; 
 int* minimum_free_regs ; 
 int* opcode ; 

void FUNC4(struct regstat *current,int i)
{
  FUNC0(current,i);
  FUNC3(current,CCREG);
  if(opcode[i]==12) { // TRAPA
    FUNC1(current,i,15); // Stack reg
    FUNC3(current,15);
    FUNC1(current,i,SR); // Status/flags
    FUNC1(current,i,VBR);
    FUNC1(current,i,MOREG); // memory_map offset
    FUNC2(current,i,-1);
    minimum_free_regs[i]=1;
  }
  current->isdoingcp=0;
}
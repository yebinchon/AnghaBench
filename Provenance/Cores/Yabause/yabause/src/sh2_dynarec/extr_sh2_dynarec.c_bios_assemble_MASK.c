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
struct regstat {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  pointer ;

/* Variables and functions */
 int /*<<< orphan*/  CCREG ; 
 int CLOCK_DIVIDER ; 
 char HOST_CCREG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* ccadj ; 
 int /*<<< orphan*/  FUNC1 (char,int,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 char FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  is_delayslot ; 
 scalar_t__ master_handle_bios ; 
 scalar_t__ slave ; 
 scalar_t__ slave_handle_bios ; 
 scalar_t__ start ; 

void FUNC5(int i,struct regstat *i_regs)
{
  signed char ccreg=FUNC4(i_regs->regmap,CCREG);
  FUNC0(ccreg==HOST_CCREG);
  FUNC0(!is_delayslot);
  FUNC3(start+i*2,0);
  //emit_writeword(0,slave?(int)&slave_pc:(int)&master_pc);
  FUNC1(HOST_CCREG,CLOCK_DIVIDER*ccadj[i],HOST_CCREG);
  if(slave)
    FUNC2((pointer)slave_handle_bios); // Probably doesn't work
  else
    FUNC2((pointer)master_handle_bios);
}
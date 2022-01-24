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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  SH2_struct ;

/* Variables and functions */
 int /*<<< orphan*/ * MSH2 ; 
 void* FUNC0 (void*) ; 
 void* master_ip ; 
 void* master_pc ; 
 void* slave_ip ; 
 void* slave_pc ; 

void FUNC1(SH2_struct *context, u32 value) {
  //printf("SH2DynarecSetPC(%s,%x)\n",(context==MSH2)?"master":"slave",value);
  if(context==MSH2) {
    master_pc=value;
    master_ip=FUNC0(value);
  }
  else {
    slave_pc=value;
    slave_ip=FUNC0(value+1);
  }
}
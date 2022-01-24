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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** mini_ht_master ; 
 int /*<<< orphan*/ ** mini_ht_slave ; 
 scalar_t__ out ; 
 scalar_t__ slave ; 

void FUNC4(int return_address,int rt,int temp) {
  FUNC1(return_address,rt); // PC into link register
  //emit_writeword_imm(return_address,(int)&mini_ht[(return_address&0xFF)>>8][0]);
  if(slave) FUNC2(rt,(int)&mini_ht_slave[(return_address&0xFF)>>3][0]);
  else FUNC2(rt,(int)&mini_ht_master[(return_address&0xFF)>>3][0]);
  FUNC0((int)out,return_address,1);
  if(slave) FUNC3(0,(int)&mini_ht_slave[(return_address&0xFF)>>3][1]);
  else FUNC3(0,(int)&mini_ht_master[(return_address&0xFF)>>3][1]);
}
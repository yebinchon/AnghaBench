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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/ ** mini_ht_master ; 
 int /*<<< orphan*/ ** mini_ht_slave ; 
 scalar_t__ out ; 
 scalar_t__ slave ; 

void FUNC6(u32 return_address,int rt,int temp) {
  #ifndef HAVE_ARMv7
  FUNC1(return_address,rt); // PC into link register
  FUNC0((int)out,return_address,1);
  FUNC4(temp);
  if(slave) FUNC5(rt,(int)&mini_ht_slave[(return_address&0xFF)>>3][0]);
  else FUNC5(rt,(int)&mini_ht_master[(return_address&0xFF)>>3][0]);
  if(slave) FUNC5(temp,(int)&mini_ht_slave[(return_address&0xFF)>>3][1]);
  else FUNC5(temp,(int)&mini_ht_master[(return_address&0xFF)>>3][1]);
  #else
  emit_movw(return_address&0x0000FFFF,rt);
  add_to_linker((int)out,return_address,1);
  emit_pcreladdr(temp);
  if(slave) emit_writeword(temp,(int)&mini_ht_slave[(return_address&0xFF)>>3][1]);
  else emit_writeword(temp,(int)&mini_ht_master[(return_address&0xFF)>>3][1]);
  emit_movt(return_address&0xFFFF0000,rt);
  if(slave) emit_writeword(rt,(int)&mini_ht_slave[(return_address&0xFF)>>3][0]);
  else emit_writeword(rt,(int)&mini_ht_master[(return_address&0xFF)>>3][0]);
  #endif
}
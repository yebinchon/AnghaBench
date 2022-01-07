
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg_initialized ;

void _break(void)
{
 if(!dbg_initialized) return;
 __asm__ __volatile__ (".globl __breakinst\n						   __breakinst: .long 0x7d821008");

}

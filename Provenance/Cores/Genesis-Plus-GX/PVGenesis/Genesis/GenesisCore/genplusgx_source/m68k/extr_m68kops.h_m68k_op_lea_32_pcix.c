
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AX ;
 int EA_PCIX_32 () ;

__attribute__((used)) static void m68k_op_lea_32_pcix(void)
{
  AX = EA_PCIX_32();
}

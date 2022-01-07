
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C ;
 int CPU_regP ;
 int N ;
 scalar_t__ V ;
 scalar_t__ Z ;

void CPU_GetStatus(void)
{

 CPU_regP = (N & 0x80) + (V ? 0x40 : 0) + (CPU_regP & 0x3c) + ((Z == 0) ? 0x02 : 0) + C;



}

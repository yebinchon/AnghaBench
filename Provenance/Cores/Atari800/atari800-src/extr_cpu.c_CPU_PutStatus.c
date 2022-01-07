
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C ;
 int CPU_regP ;
 int N ;
 int V ;
 int Z ;

void CPU_PutStatus(void)
{
 N = CPU_regP;

 V = (CPU_regP & 0x40);

 Z = (CPU_regP & 0x02) ^ 0x02;
 C = (CPU_regP & 0x01);
}

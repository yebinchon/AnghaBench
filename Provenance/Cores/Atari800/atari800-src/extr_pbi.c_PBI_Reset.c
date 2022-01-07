
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBI_D1PutByte (int,int ) ;
 scalar_t__ PBI_IRQ ;
 int PBI_XLD_Reset () ;
 scalar_t__ PBI_XLD_enabled ;

void PBI_Reset(void)
{

 PBI_D1PutByte(0xd1ff, 0);



 PBI_IRQ = 0;
}

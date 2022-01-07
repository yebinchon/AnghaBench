
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D1FF_LATCH ;
 int PBI_D6D7ram ;
 int PBI_IRQ ;
 int StateSav_SaveINT (int *,int) ;
 int StateSav_SaveUBYTE (int *,int) ;

void PBI_StateSave(void)
{
 StateSav_SaveUBYTE(&D1FF_LATCH, 1);
 StateSav_SaveINT(&PBI_D6D7ram, 1);
 StateSav_SaveINT(&PBI_IRQ, 1);
}

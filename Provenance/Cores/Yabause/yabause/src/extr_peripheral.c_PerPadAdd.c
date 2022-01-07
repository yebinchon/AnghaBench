
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortData_struct ;
typedef int PerPad_struct ;


 int PERPAD ;
 int * PerAddPeripheral (int *,int ) ;

PerPad_struct * PerPadAdd(PortData_struct * port)
{
   return PerAddPeripheral(port, PERPAD);
}
